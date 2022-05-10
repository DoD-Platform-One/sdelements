{{/*
Define the deployment name
*/}}
{{- define "database.deploymentName" -}}
{{- printf "%v-%v" ( include "library.trimmedName" . ) "database" -}}
{{- end -}}

{{- define "database.secretName" -}}
{{- if .Values.secretName -}}
  {{- printf "%s" .Values.secretName -}}
{{- else if .Values.global.secretName -}}
  {{- printf "%s" .Values.global.secretName -}}
{{- else -}}
{{ printf "%v-database-secrets" .Release.Name }}
{{- end -}}
{{- end -}}

{{- define "database.serviceName" -}}
{{ printf "%v-database-service" ( include "library.trimmedName" . ) }}
{{- end -}}

{{- define "database.port" -}}
{{- default 5432 .Values.port -}}
{{- end -}}
