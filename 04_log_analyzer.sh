#!/bin/bash

# Script Name: 04_log_analyzer.sh
# Author: Anand Minejes
# Course: Open Source Software
# Description: Analyzes log files for specific keywords, commonly used to debug FastAPI backends.

# Script takes two command-line arguments:
# $1: The path to the log file
# $2: The keyword to search for (case-insensitive)
TARGET_LOG=$1
SEARCH_KEYWORD=${2:-"ERROR"} # Default to 'ERROR' if not provided

# Function to create a dummy Log file if one doesn't exist (Self-test mode)
create_dummy_log() {
    echo "No log file provided. Generating 'fastapi_app.log' for testing..."
    cat > fastapi_app.log <<EOF
[2024-03-27 10:00:01] INFO: Application startup complete.
[2024-03-27 10:15:22] ERROR: FastAPI encountered a 500 status on /predict endpoint.
[2024-03-27 10:15:23] DEBUG: Tracing memory allocation for ML model.
[2024-03-27 10:20:45] CRITICAL: CUDA memory error detected during inference.
[2024-03-27 10:30:10] ERROR: DB Connection Reset by Peer (PostgreSQL).
EOF
    TARGET_LOG="fastapi_app.log"
}

# Check if a log file was provided or if the provided file exists
if [[ -z "$TARGET_LOG" ]] || [[ ! -f "$TARGET_LOG" ]]; then
    create_dummy_log
fi

# Initialize a counter variable for occurrences
MATCH_COUNT=0

# Read the file line-by-line using a while loop
# We use -r to prevent backslash escapes from being interpreted
while read -r LINE_CONTENT; do
    # Perform a case-insensitive check for the keyword within the line
    # Convert both to lowercase for comparison
    if [[ "${LINE_CONTENT,,}" == *"${SEARCH_KEYWORD,,}"* ]]; then
        # Increment our counter if a match is found
        ((MATCH_COUNT++))
    fi
done < "$TARGET_LOG"

# Display the summary report
echo "--- Log Analysis Summary ---"
echo "File Analyzed: $TARGET_LOG"
echo "Keyword Searched: $SEARCH_KEYWORD"
echo "Total Occurrences Found: $MATCH_COUNT"
echo "----------------------------------------------------------"
