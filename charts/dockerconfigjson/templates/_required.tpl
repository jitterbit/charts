{{/* vim: set filetype=mustache: */}}

{{/*
  Required values
*/}}
{{- define "dockerconfigjson.required" -}}
  {{- required "imageCredentials is required!" .Values.imageCredentials -}}
    {{- range .Values.imageCredentials -}}
      {{- required "imageCredentials[].username is required!" .username -}}
      {{- required "imageCredentials[].accessToken is required!" .accessToken -}}
    {{- end -}}
    {{/* Check for registry uniqueness */}}
    {{- $registries := list -}}
    {{- range .Values.imageCredentials -}}
      {{- $registries = append $registries (default "https://index.docker.io/v1/" .registry) -}}
    {{- end -}}
    {{- required "All imageCredentials[].registry's must be unique!" (or (eq (len $registries) (len ($registries | uniq))) nil) -}}
{{- end -}}
