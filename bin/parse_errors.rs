//! ```cargo
//! [dependencies]
//! regex = "1"
//! ```

use std::fs;

fn main() {
    let file_path_arg = std::env::args().nth(1).expect("Expected file path");
    let content = fs::read_to_string(&file_path_arg).expect("Failed to read file");

    let mut file_path = "Unknown File".to_string();
    let mut error_title = "Unknown Error".to_string();
    let mut error_code = "N/A".to_string();
    let mut error_line = "-".to_string();
    let mut error_column = "-".to_string();
    let mut error_detail = String::new();
    
    let mut inside_file_path = false;
    let mut inside_detail = false;

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
            error_title = trimmed
                .replace("title: ", "")
                .replace("\"", "")
                .trim()
                .to_string();
        }

        if trimmed.starts_with("code: ") {
            error_code = trimmed
                .replace("code: ", "")
                .replace("\"", "")
                .trim()
                .to_string();
        }

        if trimmed.starts_with("line: ") {
            error_line = trimmed
                .replace("line: ", "")
                .trim()
                .to_string();
        }

        if trimmed.starts_with("column: ") {
            error_column = trimmed
                .replace("column: ", "")
                .trim()
                .to_string();
        }

        if trimmed.starts_with("detail: Some(") {
            inside_detail = true;
            error_detail = trimmed
                .replace("detail: Some(", "")
                .replace("\"", "")
                .trim()
                .to_string();
        } else if inside_detail {
            if trimmed == ")," {
                inside_detail = false;
            } else {
                error_detail.push(' ');
                error_detail.push_str(trimmed);
            }
        }
    }

    if error_detail.is_empty() {
        error_detail = "No details provided".to_string();
    }

    if file_path.is_empty() {
        file_path = "Unknown File".to_string();
    }

    // Print formatted error output
    println!("❌ Workflow validation failed! See errors below:\n");
    println!("🔹 File: {}", file_path);
    println!("🔹 Error: {}", error_title);
    println!("   Code: {}", error_code);
    println!("   Location: Line {}, Column {}", error_line, error_column);
    println!("   Details: {}", error_detail);
}
