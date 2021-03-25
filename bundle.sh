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
  JSON_SCHEMA="${chart}/values.schema.json"
  YAML_SCHEMA="${chart}/values.schema.yaml"
  if [ ! -f "$JSON_SCHEMA" ] 
  then
    echo "File $JSON_SCHEMA does not exist"
    touch "$JSON_SCHEMA"
  fi
  yq eval-all --tojson "select(fileIndex == 0) * select(filename == \"$YAML_SCHEMA\")" definitions.schema.yaml "${chart}"/values.schema.yaml > "$JSON_SCHEMA"

done

echo "done"
