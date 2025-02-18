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

{{- define "datastore.imageRegistry" -}}
{{- ( index .Values .Chart.Name ).imageRegistry | default .Values.global.imageRegistry | default "repository.securitycompass.com" -}}
{{- end -}}

{{- define "datastore.imageRegistryFormat" -}}
{{- ( index .Values .Chart.Name ).imageRegistryFormat | default .Values.global.imageRegistryFormat | default "%s/sde-docker-%s/%s/%s:%s" -}}
{{- end -}}

{{- define "datastore.imageOrganization" -}}
{{- ( index .Values .Chart.Name ).imageOrganization | default .Values.global.imageOrganization | default "prod" -}}
{{- end -}}

{{- define "datastore.imageSource" -}}
{{- ( index .Values .Chart.Name ).imageSource | default .Values.global.imageSource | default "sde" -}}
{{- end -}}

{{- define "datastore.pvcEnabled" -}}
{{- $pasEnabled := default false (index .Values "global" "pas").enabled -}}
{{- $dataPersistenceEnabled := default false .Values.dataPersistence -}}
{{- if or $dataPersistenceEnabled $pasEnabled -}}
true
{{- else -}}
false
{{- end -}}


{{- end -}}