{{- define "pas-async-worker.dbConfigmap" -}}
{{- if .Values.useLocalDevDbConfig -}}
{{- printf "%v-%v-%v" .Release.Name .Chart.Name "db-configmap" -}}
{{- else -}}
{{- printf "%v-%v" .Release.Name "db-configmap" -}}
{{- end -}}
{{- end -}}
