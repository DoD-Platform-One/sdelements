{{- define "pas.brokerUser" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default (default "pas" $root.Values.global.pas.broker.user) $dot.broker.user) -}}
{{- end -}}

{{- define "pas.brokerVhost" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default (default "rabbit" $root.Values.global.broker.adminVhost) $root.Values.global.pas.broker.vhost) -}}
{{- end -}}

{{- define "pas-api.dbConfigmap" -}}
{{- if .Values.useLocalDevDbConfig -}}
{{- printf "%v-%v-%v" .Release.Name .Chart.Name "db-configmap" -}}
{{- else -}}
{{- printf "%v-%v" .Release.Name "db-configmap" -}}
{{- end -}}
{{- end -}}
