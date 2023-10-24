{{- define "pas-api.admin.database.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default (default "database-secrets" (index $root.Values "sc-database" "secretName")) $root.Values.global.secretName) $dot.admin.database.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}

{{- define "pas-api.admin.database.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- default "ADMIN_DATABASE_PASSWORD" $dot.admin.database.passwordSecretKey -}}
{{- end -}}

{{- define "pas-api.admin.broker.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default (default "broker" ( index $root.Values "rabbitmq" "auth" "existingPasswordSecret" )) $root.Values.global.secretName) $dot.admin.broker.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}

{{- define "pas-api.admin.broker.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- default "rabbitmq-password" $dot.admin.broker.passwordSecretKey -}}
{{- end -}}
