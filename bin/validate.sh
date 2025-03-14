#!/bin/bash

SCRIPT_DIR="$(dirname "$0")"  # Get directory of script.sh
RUST_SCRIPT="$SCRIPT_DIR/parse_errors.rs"
OUTPUT_FILE=$(mktemp)
action-validator .github/workflows/fixtures/*.yml > "$OUTPUT_FILE" 2>&1
EXIT_CODE=$?

# Install rust-script if not present (GitHub Actions)
if ! command -v rust-script &> /dev/null; then
    echo "⚙️ Installing rust-script..."
    cargo install rust-script
fi

# If validation fails, format errors using Rust parser
if [[ $EXIT_CODE -ne 0 ]]; then
  rust-script "$RUST_SCRIPT" "$OUTPUT_FILE"
  exit 1  # Ensure the action fails properly
fi  

echo "✅ All workflows validated successfully!"
exit 0
