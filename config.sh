# Check if the environment variable is set
if [ -z "${GOOGLE_SHEET_TOKEN}" ]; then
  echo "Environment variable ${GOOGLE_SHEET_TOKEN} is not set."
  exit 1
fi
JSON_FILE="client_login.json"
echo "${ENV_VAR_NAME}" > "$JSON_FILE"
