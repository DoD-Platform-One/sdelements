{{- define "pas.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default (default "pas-secrets" $root.Values.global.secretName) $root.Values.global.pas.secretName) $dot.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}
