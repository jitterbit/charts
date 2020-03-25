#!/bin/bash
set -eo pipefail

echo "Bundling all of the charts..."

# Convert the definitions YAML-based JSON schema into JSON
yml2json definitions.schema.yaml --output definitions.schema.json

# Loop through every chart
for chart in charts/*; do
  # Convert the values YAML-based JSON schema into JSON
  yml2json "${chart}"/values.schema.yaml --output "${chart}"/values-temp.schema.json

  # Combine the values.schema.json and definitions.schema.json files
  # with the values.schema.json file taking precedence recursively
  # See https://stedolan.github.io/jq/manual/#Multiplication,division,modulo:*,/,and%
  jq --compact-output --slurp '.[0] * .[1]' definitions.schema.json "${chart}"/values-temp.schema.json > "${chart}"/values.schema.json

  # Remove the temporary JSON schema file
  rm "${chart}"/values-temp.schema.json
done
