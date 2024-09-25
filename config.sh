#!/bin/bash

# Check if the environment variable is set
if [ -z "${GOOGLE_SHEET_TOKEN}" ]; then
  echo "Environment variable ${GOOGLE_SHEET_TOKEN} is not set."
  exit 1
fi
JSON_FILE="output.json"
echo "${GOOGLE_SHEET_TOKEN}" > "$JSON_FILE"
echo "$(<output.json )"

