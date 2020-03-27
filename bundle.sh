#!/bin/bash
set -eo pipefail

echo -n "Bundling all of the charts..."

# Loop through every chart
for chart in charts/*; do
  # Combine the definitions.schema.yaml and charts/$chart/values.schema.yaml files
  # with the charts/$chart/values.schema.yaml file taking precedence
  # and output the merged YAML document as JSON.
  # See https://mikefarah.gitbook.io/yq/commands/merge
  # and https://mikefarah.gitbook.io/yq/usage/convert
  yq merge --overwrite --tojson definitions.schema.yaml "${chart}"/values.schema.yaml > "${chart}"/values.schema.json
done

echo "done"
