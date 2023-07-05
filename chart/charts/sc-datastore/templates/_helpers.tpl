{{/*
Define the deployment name
*/}}
{{- define "datastore.deploymentName" -}}
{{- printf "%v-%v" ( include "library.trimmedName" . ) "data-store" -}}
{{- end -}}

{{- define "datastore.secretName" -}}
{{- if .Values.secretName -}}
  {{- printf "%s" .Values.secretName -}}
{{- else if .Values.global.secretName -}}
  {{- printf "%s" .Values.global.secretName -}}
{{- else -}}
{{ printf "%v-datastore-secrets" .Release.Name }}
{{- end -}}
{{- end -}}

{{- define "datastore.serviceName" -}}
{{ printf "%v-datastore-service" ( include "library.trimmedName" . ) }}
{{- end -}}

{{- define "datastore.configMapName" -}}
{{- printf "%v-%v" ( include "library.trimmedName" . ) "redis-resources" -}}
{{- end -}}

{{- define "datastore.pvcName" -}}
{{- printf "%v-%v" ( include "library.trimmedName" . ) "datastore-volume-claim" -}}
{{- end -}}

{{- define "datastore.port" -}}
{{- default 6379 .Values.port -}}
{{- end -}}
