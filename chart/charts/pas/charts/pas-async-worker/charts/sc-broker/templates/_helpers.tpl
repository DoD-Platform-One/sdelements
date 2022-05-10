{{- define "broker.secretName" -}}
{{- if .Values.secretName -}}
  {{- printf "%s" .Values.secretName -}}
{{- else if .Values.global.secretName -}}
  {{- printf "%s" .Values.global.secretName -}}
{{- else -}}
  {{- printf "%v-broker-secrets" .Release.Name -}}
{{- end -}}
{{- end -}}
