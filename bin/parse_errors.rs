//! ```cargo
//! [dependencies]
//! regex = "1"
//! ```

use std::fs;

fn main() {
    let file_path_arg = std::env::args().nth(1).expect("Expected file path");
    let content = fs::read_to_string(&file_path_arg).expect("Failed to read file");

    let mut file_path = "Unknown File".to_string();
    let mut errors = Vec::new();

    let mut inside_file_path = false;
    let mut inside_detail = false;
    let mut error_title = "Unknown Error".to_string();
    let mut error_code = "N/A".to_string();
    let mut error_line = "-".to_string();
    let mut error_column = "-".to_string();
    let mut error_detail = String::new();

    for line in content.lines() {
        let trimmed = line.trim();

        if trimmed.starts_with("file_path: Some(") {
            inside_file_path = true;
            file_path = trimmed
                .replace("file_path: Some(", "")
                .replace("\"", "")
                .trim()
                .to_string();
        } else if inside_file_path {
            if trimmed == ")," {
                inside_file_path = false;
            } else {
                file_path.push_str(trimmed);
            }
        }

        if trimmed.starts_with("title: ") {
            error_title = trimmed.replace("title: ", "").replace("\"", "").trim().to_string();
        }

        if trimmed.starts_with("code: ") {
            error_code = trimmed.replace("code: ", "").replace("\"", "").trim().to_string();
        }

        if trimmed.starts_with("line: ") {
            error_line = trimmed.replace("line: ", "").trim().to_string();
        }

        if trimmed.starts_with("column: ") {
            error_column = trimmed.replace("column: ", "").trim().to_string();
        }

        if trimmed.starts_with("detail: Some(") {
            inside_detail = true;
            error_detail = trimmed.replace("detail: Some(", "").replace("\"", "").trim().to_string();
        } else if inside_detail {
            if trimmed == ")," {
                inside_detail = false;
                errors.push((error_title.clone(), error_code.clone(), error_line.clone(), error_column.clone(), error_detail.clone()));
                error_title = "Unknown Error".to_string();
                error_code = "N/A".to_string();
                error_line = "-".to_string();
                error_column = "-".to_string();
                error_detail = String::new();
            } else {
                error_detail.push(' ');
                error_detail.push_str(trimmed);
            }
        }
    }

    if errors.is_empty() {
        println!("✅ No validation errors found.");
        return;
    }

    println!("❌ Workflow validation failed for file: {}\n", file_path);
    for (title, code, line, column, detail) in errors {
        println!("🔹 Error: {}", title);
        println!("   Code: {}", code);
        println!("   Location: Line {}, Column {}", line, column);
        println!("   Details: {}\n", detail);
    }
}
