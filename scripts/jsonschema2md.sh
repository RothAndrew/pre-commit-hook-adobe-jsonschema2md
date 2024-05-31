#!/usr/bin/env sh

set -e

# Throw an error message if the tool 'npx' is not installed
if ! command -v npx > /dev/null; then
  echo "Error: 'npx' is not installed. Please install it and try again."
  exit 1
fi

npx --yes @adobe/jsonschema2md "${@}"
