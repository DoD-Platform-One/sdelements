{{- define "pas-api.broker.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default $root.Values.global.pas.broker.secretName $dot.broker.secretName -}}
{{- empty $secretName | ternary (include "pas.secretName" .) (printf "%v-%v" $root.Release.Name $secretName) -}}
{{- end -}}

{{- define "pas-api.broker.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default ( default "PAS_BROKER_PASSWORD" $root.Values.global.pas.broker.passwordSecretKey ) $dot.broker.passwordSecretKey) -}}
{{- end -}}

{{- define "pas-api.database.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default $root.Values.global.pas.database.secretName $dot.database.secretName -}}
{{- empty $secretName | ternary (include "pas.secretName" .) (printf "%v-%v" $root.Release.Name $secretName) -}}
{{- end -}}

{{- define "pas-api.database.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default ( default "PAS_DATABASE_PASSWORD" $root.Values.global.pas.database.passwordSecretKey ) $dot.database.passwordSecretKey) -}}
{{- end -}}
