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

{{- define "pas-async-worker.sharedStorage.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default $root.Values.global.sharedStorage.secretName $root.Values.global.pas.sharedStorage.secretName) $dot.sharedStorage.secretName -}}
{{- empty $secretName | ternary (include "pas.secretName" .) (printf "%v-%v" $root.Release.Name $secretName) -}}
{{- end -}}

{{- define "pas-async-worker.sharedStorage.accessKeyIdSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- if $dot.sharedStorage.accessKeyIdSecretKey -}}
    {{- $dot.sharedStorage.accessKeyIdSecretKey -}}
{{- else if $root.Values.global.pas.sharedStorage.accessKeyIdSecretKey -}}
    {{- $root.Values.global.pas.sharedStorage.accessKeyIdSecretKey -}}
{{- else if $root.Values.global.sharedStorage.accessKeyIdSecretKey -}}
    {{- $root.Values.global.sharedStorage.accessKeyIdSecretKey -}}
{{- else -}}
    {{- "PAS_S3_ACCESS_KEY" -}}
{{- end -}}
{{- end -}}

{{- define "pas-async-worker.sharedStorage.secretAccessKeySecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- if $dot.sharedStorage.secretAccessKeySecretKey -}}
    {{- $dot.sharedStorage.secretAccessKeySecretKey -}}
{{- else if $root.Values.global.pas.sharedStorage.secretAccessKeySecretKey -}}
    {{- $root.Values.global.pas.sharedStorage.secretAccessKeySecretKey -}}
{{- else if $root.Values.global.sharedStorage.secretAccessKeySecretKey -}}
    {{- $root.Values.global.sharedStorage.secretAccessKeySecretKey -}}
{{- else -}}
    {{- "PAS_S3_SECRET_ACCESS_KEY" -}}
{{- end -}}
{{- end -}}
