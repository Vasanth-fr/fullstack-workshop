#!/bin/bash
set -euo pipefail

# Validate argument
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <log-file>"
  exit 1
fi

LOG_FILE="$1"

# Check if file exists
if [[ ! -f "$LOG_FILE" ]]; then
  echo "Error: File does not exist -> $LOG_FILE"
  exit 1
fi

echo "============ LOG ANALYSER REPORT ================"
echo "FilePath: $(realpath "$LOG_FILE")"

# Count total lines
echo "Total Lines: $(wc -l < "$LOG_FILE")"
echo "------------------------------------------------"

# Count log levels
echo "INFO: $(grep -o "INFO" "$LOG_FILE" | wc -l)"
echo "WARNING: $(grep -o "WARNING" "$LOG_FILE" | wc -l)"
echo "ERROR: $(grep -o "ERROR" "$LOG_FILE" | wc -l)"
echo "------------------------------------------------"

# Extract unique IP addresses
echo "Unique IP addresses found:"
grep -E -o '([0-9]{1,3}\.){3}[0-9]{1,3}' "$LOG_FILE" | sort | uniq
