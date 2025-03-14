#!/bin/bash

# Get the directory of the script
SCRIPT_DIR="$(dirname "$0")"
RUST_SCRIPT="$SCRIPT_DIR/parse_errors.rs"

# Ensure action-validator is installed
if ! command -v action-validator >/dev/null; then
  echo "❌ action-validator is not installed."
  echo "🔗 Installation instructions: https://github.com/mpalmer/action-validator"
  exit 1
fi

# Ensure rust-script is installed (only if missing)
if ! command -v rust-script &> /dev/null; then
    echo "⚙️ Installing rust-script..."
    cargo install rust-script
fi

# Determine the workflow file path
INPUT_PATH_TO_WORKFLOWS="${1:-'.github/workflows/*.yml'}"

echo "🔍 Running GitHub Actions validation with action-validator..."
echo "📂 Validating workflows in: $INPUT_PATH_TO_WORKFLOWS"

scan_count=0
error_count=0

for action in $INPUT_PATH_TO_WORKFLOWS; do
  OUTPUT_FILE=$(mktemp)

  # Validate the action file
  if action-validator "$action" > "$OUTPUT_FILE" 2>&1; then
    echo "✅ $action - No issues found."
  else
    echo "❌ $action - Issues detected."
    rust-script "$RUST_SCRIPT" "$OUTPUT_FILE"
    error_count=$((error_count+1))
  fi

  scan_count=$((scan_count+1))
done

if [[ $error_count -gt 0 ]]; then
  echo "❌ action-validator found $error_count errors in GitHub Actions files."
  exit 1
else
  echo "✅ action-validator scanned $scan_count GitHub Actions files and found no errors!"
fi
