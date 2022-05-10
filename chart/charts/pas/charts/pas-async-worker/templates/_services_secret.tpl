{{- define "pas-async-worker.broker.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default (default "broker-secrets" (get (index $root.Values "sc-broker") "secretName")) $root.Values.global.pas.broker.secretName) $dot.broker.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}

{{- define "pas-async-worker.broker.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default ( default "ADMIN_BROKER_PASSWORD" $root.Values.global.pas.broker.passwordSecretKey ) $dot.broker.passwordSecretKey) -}}
{{- end -}}

{{- define "pas-async-worker.database.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default (default "database-secrets" (get (index $root.Values "sc-database") "secretName")) $root.Values.global.pas.database.secretName) $dot.database.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}

{{- define "pas-async-worker.database.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default ( default "ADMIN_DATABASE_PASSWORD" $root.Values.global.pas.database.passwordSecretKey ) $dot.broker.passwordSecretKey) -}}
{{- end -}}
