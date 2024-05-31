#!/usr/bin/env sh

set -e

# Throw an error message if the tool 'jsonschema2md' is not installed
if ! command -v jsonschema2md > /dev/null; then
  echo "Error: 'jsonschema2md' is not installed. Please install it by running 'npm install -g jsonschema2md'."
  exit 1
fi

jsonschema2md "${@}"
