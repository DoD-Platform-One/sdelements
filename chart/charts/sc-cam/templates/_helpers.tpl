{{/*
Define the deployment name
*/}}
{{- define "cam.deploymentName" -}}
{{- printf "%v-%v" ( include "library.trimmedName" . ) "cam" -}}
{{- end -}}

{{- define "cam.secretName" -}}
{{- if .Values.secretName -}}
  {{- printf "%s" .Values.secretName -}}
{{- else if .Values.global.secretName -}}
  {{- printf "%s" .Values.global.secretName -}}
{{- else -}}
{{ printf "%v-cam-secrets" ( include "library.trimmedName" . ) }}
{{- end -}}
{{- end -}}

{{- define "cam.serviceName" -}}
{{ printf "%v-cam-service" ( include "library.trimmedName" . ) }}
{{- end -}}

{{- define "cam.configMapName" -}}
{{- printf "%v-%v" ( include "library.trimmedName" . ) "cam-resources" -}}
{{- end -}}

{{- define "cam.initConfigMapName" -}}
{{- printf "%v-%v" ( include "library.trimmedName" . ) "cam-init-resources" -}}
{{- end -}}

{{- define "cam.port" -}}
{{- default 3000 .Values.port -}}
{{- end -}}

{{- define "cam.broker.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default (default "broker" (get (index $root.Values "broker") "secretName")) $root.Values.global.cam.broker.secretName) $dot.broker.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}

{{- define "cam.broker.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default ( default "rabbitmq-password" $root.Values.global.cam.broker.passwordSecretKey ) $dot.broker.passwordSecretKey) -}}
{{- end -}}
 
{{- define "cam.database.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default (default "database" (get (index $root.Values "database") "secretName")) $root.Values.global.cam.database.secretName) $dot.database.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}

{{- define "cam.database.passwordSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default ( default "postgres-password" $root.Values.global.cam.database.passwordSecretKey ) $dot.database.passwordSecretKey) -}}
{{- end -}}

{{- define "cam.sde.secretName" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- $secretName := default (default (default "sde-secrets" (get (index $root.Values "sde") "secretName")) $root.Values.global.cam.sde.secretName) $dot.sde.secretName -}}
{{- printf "%v-%v" $root.Release.Name $secretName -}}
{{- end -}}

{{- define "cam.sde.jwtSecretKey" -}}
{{- $root := (get . "root") -}}
{{- $dot := (get . "dot") -}}
{{- (default ( default "SDE_JWT_SECRET" $root.Values.global.cam.sde.jwtSecretKey ) $dot.sde.jwtSecretKey) -}}
{{- end -}}

{{- define "cam.sde.dbName" -}}
{{- printf "sdelements" -}}
{{- end -}}

{{- define "enableSdeTls" -}}
{{- ternary "true" "false" ( or ( .Values.global.enableInternalTls ) ( eq ( .Values.global.enableInternalTls | toString ) "<nil>" ) ) -}}
{{- end -}}
