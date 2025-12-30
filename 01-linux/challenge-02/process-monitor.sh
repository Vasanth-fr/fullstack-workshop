#!/bin/bash
set -euo pipefail

# Check if process name is provided
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <process-name>"
  exit 1
fi

processName="$1"

# Check if the process is running
if pgrep -x "$processName" > /dev/null; then
  echo "Process '$processName' is running."
else
  echo "Process '$processName' is NOT running."
fi
