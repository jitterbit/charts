{{/* vim: set filetype=mustache: */}}

{{/*
  Required values
*/}}
{{- define "agent-group.required" -}}
  {{- required "image is required!" .Values.image -}}
    {{- required "image.repository is required!" .Values.image.repository -}}
    {{- required "image.digest or image.tag is required!" (or .Values.image.digest .Values.image.tag) -}}
    {{- required "image.pullPolicy is required!" .Values.image.pullPolicy -}}
  {{- required "agent is required!" .Values.agent -}}
    {{- required "agent.registerjson is required!" .Values.agent.registerjson -}}
      {{- required ".Values.agent.registerjson.cloudUrl is required!" .Values.agent.registerjson.cloudUrl -}}
      {{- required ".Values.agent.registerjson.username is required!" .Values.agent.registerjson.username -}}
      {{- required ".Values.agent.registerjson.password is required!" .Values.agent.registerjson.password -}}
      {{- required ".Values.agent.registerjson.agentGroupId is required!" .Values.agent.registerjson.agentGroupId -}}
  {{- required "hpa is required!" .Values.hpa -}}
  {{- required "replicas is required!" .Values.replicas -}}
  {{- required "resources is required!" .Values.resources -}}
  {{- required "revisionHistoryLimit is required!" .Values.revisionHistoryLimit -}}
  {{- required "affinity is required!" .Values.affinity -}}
  {{- required "readinessProbe is required!" .Values.readinessProbe -}}
  {{- required "livenessProbe is required!" .Values.livenessProbe -}}
{{- end -}}
