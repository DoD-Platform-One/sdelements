{{- define "pas-api.broker.resultBackend" -}}
{{- $redisUsesSSL := .Values.global.pas.datastore.useSsl | default .Values.global.datastore.useSsl | default false | toString -}}
{{- $redisHost := (printf "%v-%v" ( include "library.trimmedName" . ) (.Values.global.pas.datastore.serviceName | default .Values.global.datastore.serviceName | default "datastore-service") ) -}}
{{- $redisPort :=  .Values.global.pas.datastore.port | default .Values.global.datastore.port | default 6379 -}}
{{- $redisUsername :=  .Values.global.pas.datastore.clientUsername | default .Values.global.datastore.clientUsername | default "" -}}
{{- $redisPassword :=  required "PAS datastore password is required, '--set global.pas.datastore.clientPassword'" ( .Values.global.pas.datastore.clientPassword | default .Values.global.datastore.clientPassword ) -}}
{{- $redisUrl := (printf "%v://%v:%v@%v:%v" (ternary "rediss" "redis" (eq $redisUsesSSL "true")) $redisUsername $redisPassword $redisHost $redisPort) -}}
{{- printf "%v" (default $redisUrl .Values.resultBackend) -}}
{{- end -}}
