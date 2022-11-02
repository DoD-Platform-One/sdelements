{{/*
Create the name of the service account to use
*/}}
{{- define "mail.serviceAccountName" -}}
{{- if .Values.createServiceAccount -}}
    {{ default ( printf "%v-%v-%v" ( include "library.trimmedName" . ) "mailer" "service" ) .Values.serviceAccountName }}
{{- else -}}
    {{ default "mail-service-account" .Values.serviceAccountName }}
{{- end -}}
{{- end -}}

{{- define "mail.deploymentName" -}}
    {{ printf "%v-%v" ( include "library.trimmedName" . ) "mailer" }}
{{- end -}}

{{- define "mail.smartHostType" -}}
{{- if (.Values.config).smartHostType -}}
    {{ upper .Values.config.smartHostType }}
{{- end -}}
{{- end -}}
