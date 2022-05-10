{{- define "pas-api.sde.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default "sde-secrets" $root.Values.global.secretName) $dot.sde.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}

{{- define "pas-api.sde.jwtSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- default "SDE_JWT_SECRET" $dot.sde.jwtSecretKey -}}
{{- end -}}

{{- define "pas-api.sde.broker.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := $dot.sde.broker.secretName -}}
{{- empty $secretName | ternary (include "pas-api.admin.broker.secretName" .) (printf "%v-%v" $root.Release.Name $secretName) -}}
{{- end -}}

{{- define "pas-api.sde.broker.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- default (include "pas-api.admin.broker.passwordSecretKey" .) $dot.sde.broker.passwordSecretKey -}}
{{- end -}}
