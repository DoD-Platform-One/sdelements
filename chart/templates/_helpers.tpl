{{/*
Expand the name of the chart.
*/}}
{{- define "sde.name" -}}
{{- default .Chart.Name .Values.global.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "sde.fullname" -}}
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
Create chart name and version as used by the chart label.
*/}}
{{- define "sde.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a broker URL based on input variables
*/}}
{{- define "sde.broker" }}
  {{- $rabbitmqHost := default ( printf "%s-broker-headless" ( include "library.trimmedName" . ) ) .Values.rabbitmq.servicenameOverride }}
  {{- $rabbitmqPort := default 5672 .Values.rabbitmq.service.ports.amqp }}
  {{- $rabbitmqUser := default "rabbit" .Values.rabbitmq.auth.username }}
  {{- $rabbitmqVHost := default "rabbit" .Values.global.broker.adminVhost }}
  {{- default ( printf "amqp://%s@%s:%v/%s" $rabbitmqUser $rabbitmqHost $rabbitmqPort $rabbitmqVHost ) .Values.global.broker.url }}
{{- end }}

{{/*
TODO: Abstract out variable headers from all the templates into _helpers to reduce duplication
*/}}

{{- define "certManagerEnabled" -}}
{{- ternary "true" "false" ( or ( .Values.global.certManager.enabled ) ( eq ( .Values.global.certManager.enabled | toString ) "<nil>" ) ) -}}
{{- end -}}

{{- define "enableInternalTls" -}}
{{- ternary "true" "false" ( or ( .Values.global.enableInternalTls ) ( eq ( .Values.global.enableInternalTls | toString ) "<nil>" ) ) -}}
{{- end -}}

{{- define "tlsSecretName" -}}
{{- printf "%v-%v-tls-secrets" ( include "library.trimmedName" . ) .serviceName -}}
{{- end -}}

{{- define "jittHttpsPort" -}}
{{- default 7443 ( index .Values "sc-jitt" "httpsPort" ) -}}
{{- end -}}

{{- define "reportingEnabled" -}}
{{- ternary "true" "false" ( or ( .Values.reporting.enabled ) ( eq ( .Values.reporting.enabled | toString ) "<nil>" ) ) -}}
{{- end -}}

{{- define "reportingPort" -}}
{{- $enableInternalTls := eq ( include "enableInternalTls" . ) "true" -}}
{{- default ( ternary 4000 4433 $enableInternalTls ) .Values.reporting.port -}}
{{- end -}}

{{- define "sde.datastorePort" -}}
{{- default 6379 ( index .Values "sc-datastore" "port" ) -}}
{{- end -}}

{{- define "sde.dbName" -}}
{{- printf "sdelements" -}}
{{- end -}}

{{- define "sde.dbEnabled" -}}
{{- ternary "true" "false" ( or .Values.postgresql.enabled ( eq ( .Values.postgresql.enabled | toString ) "<nil>" ) ) -}}
{{- end -}}

{{- define "sde.externalDbEnabled" -}}
{{- if index .Values "external-database" -}}
    {{- "true" -}}
{{- else -}}
    {{- "false" -}}
{{- end -}}
{{- end -}}

{{- define "sde.dbHost" -}}
{{- if eq ( include "sde.dbEnabled" . ) "true"   }}
    {{- printf "%v-database" ( include "library.trimmedName" . ) -}}
{{- else if eq ( include "sde.externalDbEnabled" . ) "true" -}}
    {{- index .Values "external-database" "host" -}}
{{- else -}}
    {{- fail "Error: No db connections defined" -}}
{{- end -}}
{{- end -}}

{{- define "sde.dbPort" -}}
{{- if eq ( include "sde.dbEnabled" . ) "true"   }}
    {{- default 5432 .Values.postgresql.containerPorts.postgresql -}}
{{- else if eq ( include "sde.externalDbEnabled" . ) "true" -}}
    {{- default 5432 ( index .Values "external-database" "port" ) -}}
{{- else -}}
    {{- fail "Error: No db connections defined" -}}
{{- end -}}
{{- end -}}

{{- define "sde.dbUser" -}}
{{- if eq ( include "sde.dbEnabled" . ) "true"   }}
    {{- default "sde" .Values.postgresql.auth.username -}}
{{- else if eq ( include "sde.externalDbEnabled" . ) "true" -}}
    {{- index .Values "external-database" "user" -}}
{{- else -}}
    {{- fail "Error: No db connections defined" -}}
{{- end -}}
{{- end -}}

{{- define "sde.dbPassword" -}}
{{- if eq ( include "sde.dbEnabled" . ) "true"   }}
    {{- default .Values.postgresql.auth.postgresPassword .Values.postgresql.auth.password -}}
{{- else if eq ( include "sde.externalDbEnabled" . ) "true" -}}
    {{- index .Values "external-database" "password" -}}
{{- else -}}
    {{- fail "Error: No db connections defined" -}}
{{- end -}}
{{- end -}}

{{- define "sde.dbMetricsPort" -}}
    {{- default 9187 .Values.postgresql.metrics.containerPorts.metrics -}}
{{- end -}}

{{- /* Placeholder until we support custom CA certs */ -}}
{{- define "sde.dbRequireSSL" -}}
{{- "false" -}}
{{- end -}}