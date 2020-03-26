{{/* vim: set filetype=mustache: */}}

{{/*
  Expand the name of the chart.
*/}}
{{- define "dockerconfigjson.name" -}}
  {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
  Create chart name and version as used by the chart label.
*/}}
{{- define "dockerconfigjson.chart" -}}
  {{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
  Generate the .dockerconfigjson file unencoded.
*/}}
{{- define "dockerconfigjson.b64dec" }}
  {{- print "{\"auths\":{" }}
  {{- range $index, $item := .Values.imageCredentials }}
    {{- if $index }}
      {{- print "," }}
    {{- end }}
    {{- printf "\"%s\":{\"auth\":\"%s\"}" (default "https://index.docker.io/v1/" $item.registry) (printf "%s:%s" $item.username $item.accessToken | b64enc) }}
  {{- end }}
  {{- print "}}" }}
{{- end }}

{{/*
  Generate the base64-encoded .dockerconfigjson.
  See https://github.com/helm/helm/issues/3691#issuecomment-386113346
*/}}
{{- define "dockerconfigjson.b64enc" }}
  {{- include "dockerconfigjson.b64dec" . | b64enc }}
{{- end }}
