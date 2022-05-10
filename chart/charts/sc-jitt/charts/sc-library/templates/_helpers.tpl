{{/*
Expand the name of the chart.
*/}}
{{- define "library.name" -}}
{{- default .Chart.Name .Values.global.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Determine secret name for subcharts
*/}}
{{- define "library.secretName" -}}
{{- if or .Values.secretName -}}
{{ printf "%v-%v" .Release.Name .Values.secretName }}
{{- else -}}
{{ printf "%v-%v" .Chart.Name "secrets" }}
{{- end -}}
{{- end -}}

{{/*
Simple way to get secret name of registry secret created by "library.registrySecret" template
Requires that the same root context is passed into each named template
*/}}
{{- define "library.registrySecretName" -}}
{{- if .Values.registrySecretName -}}
  {{- printf "%s" .Values.registrySecretName -}}
{{- else if .Values.global.registrySecretName -}}
  {{- printf "%s" .Values.global.registrySecretName -}}
{{- else -}}
  {{- printf "%v-registry-secret" .Chart.Name -}}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "library.fullname" -}}
{{- if .Values.global.fullnameOverride -}}
{{- .Values.global.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.global.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create a shortened release name to be used for compositing names
By limiting the release name to 40 characters we leave 23 characters for
additional service indentifiers.
*/}}
{{- define "library.trimmedName" -}}
{{- .Release.Name | trunc 35 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a tls secret name that will match the name of the service/deployment 
that the secret belongs to.
*/}}
{{- define "library.tlsSecretName" -}}
{{- printf "%v-%v-tls-secrets" ( include "library.trimmedName" . ) .serviceName -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "library.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "library.labels" -}}
helm.sh/chart: {{ include "library.chart" . }}
{{ include "library.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "library.selectorLabels" -}}
app.kubernetes.io/part-of: {{ include "library.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ template "library.name" . }}
release: {{ .Release.Name }}
heritage: {{ .Release.Service }}
{{- end -}}

{{/*
Normalize/Flatten nested list/map structures that don't cotain pass/secret/key
*/}}
{{- define "library.normalizeValues" -}}
  {{- $struct := first . -}}
  {{- $label := last . -}}
  {{- range $key, $value := $struct -}}
    {{- $subLabel := list $label $key | join "." -}}
    {{- if kindOf $value | eq "map" -}}
      {{- list $value $subLabel | include "library.normalizeValues" -}}
    {{- else if not ( or ( eq ( $value | toString ) "<nil>" ) ( regexMatch ".*(Pass|Secret|Key|Cert).*" $subLabel )) -}}
      {{- $subLabel }}: {{ $value | quote }}
{{ end -}}
{{- end }}
{{- end }}

{{/*
Flatten and filter based on key and return those that contain pass/secret/key
*/}}
{{- define "library.normalizeSecrets" -}}
  {{- $struct := first . -}}
  {{- $label := last . -}}
  {{- range $key, $value := $struct -}}
    {{- $subLabel := list $label $key | join "." -}}
    {{- if kindOf $value | eq "map" -}}
      {{- list $value $subLabel | include "library.normalizeSecrets" -}}
    {{- else if regexMatch ".*(Pass|Secret|Key|Cert).*" $subLabel -}}
      {{- $subLabel }}: {{ $value | quote }}
{{ end -}}
{{- end }}
{{- end }}

{{- define "library.certManagerEnabled" -}}
{{- ternary "true" "false" ( or ( .Values.global.certManager.enabled ) ( eq ( .Values.global.certManager.enabled | toString ) "<nil>" ) ) -}}
{{- end -}}

{{- define "library.certs" -}}
{{ ( eq ( include "library.certManagerEnabled" .root ) "true" ) | ternary ( include "library.certs.certManager" . ) ( include "library.certs.sprig" . ) }}
{{- end }}
