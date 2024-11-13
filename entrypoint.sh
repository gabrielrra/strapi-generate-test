#!/bin/sh
expect ./strapi-generate.exp

# Define ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

EXPECTED_FILE_PATH="/app/src/api/test/routes/test.ts"
ACTUAL_FILE_PATH="/app/node_modules/@strapi/generators/dist/api/test/routes/test.ts"

if [ -f "$EXPECTED_FILE_PATH" ]; then
  echo -e "${GREEN}File '${EXPECTED_FILE_PATH}' exists${NC}"
else
  echo -e "${RED}File '${EXPECTED_FILE_PATH}' does not exist. IT SHOULD${NC}"
fi

if [ -f "$ACTUAL_FILE_PATH" ]; then
  echo -e "${RED}File '${ACTUAL_FILE_PATH}' exists. IT SHOULD NOT${NC}"
else
  echo -e "${GREEN}File '${ACTUAL_FILE_PATH}' does not exist${NC}"
fi
