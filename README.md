<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# common

![Version: 2.12.0](https://img.shields.io/badge/Version-2.12.0-informational?style=flat-square) ![Type: library](https://img.shields.io/badge/Type-library-informational?style=flat-square) ![AppVersion: 2.12.0](https://img.shields.io/badge/AppVersion-2.12.0-informational?style=flat-square)

A Library Helm Chart for grouping common logic between bitnami charts. This chart is not deployable by itself.

## Upstream References
- <https://bitnami.com>

* <https://github.com/bitnami/charts>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install common chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| exampleValue | string | `"common-chart"` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-cam

![Version: 2024.2.2](https://img.shields.io/badge/Version-2024.2.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2024.2.2](https://img.shields.io/badge/AppVersion-2024.2.2-informational?style=flat-square)

SDE CAM Microservice

## Upstream References
- <https://agra.sdelements.com/sd-elements/cam>

* <https://agra.sdelements.com/sd-elements/cam>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-datastore

![Version: 1.0.3](https://img.shields.io/badge/Version-1.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.3](https://img.shields.io/badge/AppVersion-1.0.3-informational?style=flat-square)

The Security Compass datastore (Redis)

## Upstream References

* <https://agra.sdelements.com/deployment/containers/datastore>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# rabbitmq

![Version: 11.14.4](https://img.shields.io/badge/Version-11.14.4-informational?style=flat-square) ![AppVersion: 3.11.15](https://img.shields.io/badge/AppVersion-3.11.15-informational?style=flat-square)

RabbitMQ is an open source general-purpose message broker that is designed for consistent, highly-available messaging scenarios (both synchronous and asynchronous).

## Upstream References
- <https://github.com/bitnami/charts/tree/main/bitnami/rabbitmq>

* <https://github.com/bitnami/containers/tree/main/bitnami/rabbitmq>
* <https://www.rabbitmq.com>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install rabbitmq chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.imageRegistry | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.storageClass | string | `""` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/rabbitmq"` |  |
| image.tag | string | `"3.11.15-debian-11-r0"` |  |
| image.digest | string | `""` |  |
| image.debug | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| fullnameOverride | string | `""` |  |
| namespaceOverride | string | `""` |  |
| kubeVersion | string | `""` |  |
| clusterDomain | string | `"cluster.local"` |  |
| extraDeploy | list | `[]` |  |
| commonAnnotations | object | `{}` |  |
| servicenameOverride | string | `""` |  |
| commonLabels | object | `{}` |  |
| serviceBindings.enabled | bool | `false` |  |
| diagnosticMode.enabled | bool | `false` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| hostAliases | list | `[]` |  |
| dnsPolicy | string | `""` |  |
| dnsConfig | object | `{}` |  |
| auth.username | string | `"user"` |  |
| auth.password | string | `""` |  |
| auth.securePassword | bool | `true` |  |
| auth.existingPasswordSecret | string | `""` |  |
| auth.enableLoopbackUser | bool | `false` |  |
| auth.erlangCookie | string | `""` |  |
| auth.existingErlangSecret | string | `""` |  |
| auth.tls.enabled | bool | `false` |  |
| auth.tls.autoGenerated | bool | `false` |  |
| auth.tls.failIfNoPeerCert | bool | `true` |  |
| auth.tls.sslOptionsVerify | string | `"verify_peer"` |  |
| auth.tls.sslOptionsPassword.enabled | bool | `false` |  |
| auth.tls.sslOptionsPassword.existingSecret | string | `""` |  |
| auth.tls.sslOptionsPassword.key | string | `""` |  |
| auth.tls.sslOptionsPassword.password | string | `""` |  |
| auth.tls.caCertificate | string | `""` |  |
| auth.tls.serverCertificate | string | `""` |  |
| auth.tls.serverKey | string | `""` |  |
| auth.tls.existingSecret | string | `""` |  |
| auth.tls.existingSecretFullChain | bool | `false` |  |
| auth.tls.overrideCaCertificate | string | `""` |  |
| logs | string | `"-"` |  |
| ulimitNofiles | string | `"65536"` |  |
| maxAvailableSchedulers | string | `""` |  |
| onlineSchedulers | string | `""` |  |
| memoryHighWatermark.enabled | bool | `false` |  |
| memoryHighWatermark.type | string | `"relative"` |  |
| memoryHighWatermark.value | float | `0.4` |  |
| plugins | string | `"rabbitmq_management rabbitmq_peer_discovery_k8s"` |  |
| communityPlugins | string | `""` |  |
| extraPlugins | string | `"rabbitmq_auth_backend_ldap"` |  |
| clustering.enabled | bool | `true` |  |
| clustering.addressType | string | `"hostname"` |  |
| clustering.rebalance | bool | `false` |  |
| clustering.forceBoot | bool | `false` |  |
| clustering.partitionHandling | string | `"autoheal"` |  |
| loadDefinition.enabled | bool | `false` |  |
| loadDefinition.file | string | `"/app/load_definition.json"` |  |
| loadDefinition.existingSecret | string | `""` |  |
| command | list | `[]` |  |
| args | list | `[]` |  |
| lifecycleHooks | object | `{}` |  |
| terminationGracePeriodSeconds | int | `120` |  |
| extraEnvVars | list | `[]` |  |
| extraEnvVarsCM | string | `""` |  |
| extraEnvVarsSecret | string | `""` |  |
| containerPorts.amqp | int | `5672` |  |
| containerPorts.amqpTls | int | `5671` |  |
| containerPorts.dist | int | `25672` |  |
| containerPorts.manager | int | `15672` |  |
| containerPorts.epmd | int | `4369` |  |
| containerPorts.metrics | int | `9419` |  |
| initScripts | object | `{}` |  |
| initScriptsCM | string | `""` |  |
| initScriptsSecret | string | `""` |  |
| extraContainerPorts | list | `[]` |  |
| tcpListenOptions.backlog | int | `128` |  |
| tcpListenOptions.nodelay | bool | `true` |  |
| tcpListenOptions.linger.lingerOn | bool | `true` |  |
| tcpListenOptions.linger.timeout | int | `0` |  |
| tcpListenOptions.keepalive | bool | `false` |  |
| configuration | string | `"## Username and password\n##\ndefault_user = {{ .Values.auth.username }}\n{{- if and (not .Values.auth.securePassword) .Values.auth.password }}\ndefault_pass = {{ .Values.auth.password }}\n{{- end }}\n{{- if .Values.clustering.enabled }}\n## Clustering\n##\ncluster_formation.peer_discovery_backend  = rabbit_peer_discovery_k8s\ncluster_formation.k8s.host = kubernetes.default\ncluster_formation.node_cleanup.interval = 10\ncluster_formation.node_cleanup.only_log_warning = true\ncluster_partition_handling = {{ .Values.clustering.partitionHandling }}\n{{- end }}\n{{ if and .Values.clustering.enabled .Values.loadDefinition.enabled }}\ncluster_formation.target_cluster_size_hint = {{ .Values.replicaCount }}\n{{ end }}\n{{- if .Values.loadDefinition.enabled }}\nload_definitions = {{ .Values.loadDefinition.file }}\n{{- end }}\n# queue master locator\nqueue_master_locator = min-masters\n# enable loopback user\n{{- if not (empty .Values.auth.username) }}\nloopback_users.{{ .Values.auth.username }} = {{ .Values.auth.enableLoopbackUser }}\n{{- else}}\nloopback_users.guest = {{ .Values.auth.enableLoopbackUser }}\n{{- end }}\n{{ template \"rabbitmq.extraConfiguration\" . }}\n{{- if .Values.auth.tls.enabled }}\nssl_options.verify = {{ .Values.auth.tls.sslOptionsVerify }}\nlisteners.ssl.default = {{ .Values.service.ports.amqpTls }}\nssl_options.fail_if_no_peer_cert = {{ .Values.auth.tls.failIfNoPeerCert }}\nssl_options.cacertfile = /opt/bitnami/rabbitmq/certs/ca_certificate.pem\nssl_options.certfile = /opt/bitnami/rabbitmq/certs/server_certificate.pem\nssl_options.keyfile = /opt/bitnami/rabbitmq/certs/server_key.pem\n{{- if .Values.auth.tls.sslOptionsPassword.enabled }}\nssl_options.password = {{ template \"rabbitmq.tlsSslOptionsPassword\" . }}\n{{- end }}\n{{- end }}\n{{- if .Values.ldap.enabled }}\nauth_backends.1.authn = ldap\nauth_backends.1.authz = {{ ternary \"ldap\" \"internal\" .Values.ldap.authorisationEnabled }}\nauth_backends.2 = internal\n{{- $host :=  list }}\n{{- $port :=  ternary 636 389 .Values.ldap.tls.enabled }}\n{{- if .Values.ldap.uri }}\n{{- $hostPort := get (urlParse .Values.ldap.uri) \"host\" }}\n{{- $host = list (index (splitList \":\" $hostPort) 0) -}}\n{{- if (contains \":\" $hostPort) }}\n{{- $port = index (splitList \":\" $hostPort) 1 -}}\n{{- end }}\n{{- end }}\n{{- range $index, $server := concat $host .Values.ldap.servers }}\nauth_ldap.servers.{{ add $index 1 }} = {{ $server }}\n{{- end }}\nauth_ldap.port = {{ coalesce .Values.ldap.port $port }}\n{{- if or .Values.ldap.user_dn_pattern .Values.ldap.userDnPattern }}\nauth_ldap.user_dn_pattern = {{ coalesce .Values.ldap.user_dn_pattern .Values.ldap.userDnPattern }}\n{{- end }}\n{{- if .Values.ldap.basedn }}\nauth_ldap.dn_lookup_base = {{ .Values.ldap.basedn }}\n{{- end }}\n{{- if .Values.ldap.uidField }}\nauth_ldap.dn_lookup_attribute = {{ .Values.ldap.uidField }}\n{{- end }}\n{{- if .Values.ldap.binddn }}\nauth_ldap.dn_lookup_bind.user_dn = {{ .Values.ldap.binddn }}\nauth_ldap.dn_lookup_bind.password = {{ required \"'ldap.bindpw' is required when 'ldap.binddn' is defined\" .Values.ldap.bindpw }}\n{{- end }}\n{{- if .Values.ldap.tls.enabled }}\nauth_ldap.use_ssl = {{ not .Values.ldap.tls.startTls }}\nauth_ldap.use_starttls = {{ .Values.ldap.tls.startTls }}\n{{- if .Values.ldap.tls.CAFilename }}\nauth_ldap.ssl_options.cacertfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ .Values.ldap.tls.CAFilename }}\n{{- end }}\n{{- if .Values.ldap.tls.certFilename }}\nauth_ldap.ssl_options.certfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ .Values.ldap.tls.certFilename }}\nauth_ldap.ssl_options.keyfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ required \"'ldap.tls.certKeyFilename' is required when 'ldap.tls.certFilename' is defined\" .Values.ldap.tls.certKeyFilename }}\n{{- end }}\n{{- if .Values.ldap.tls.skipVerify }}\nauth_ldap.ssl_options.verify = verify_none\nauth_ldap.ssl_options.fail_if_no_peer_cert = false\n{{- else if .Values.ldap.tls.verify }}\nauth_ldap.ssl_options.verify = {{ .Values.ldap.tls.verify }}\n{{- end }}\n{{- end }}\n{{- end }}\n{{- if .Values.metrics.enabled }}\n## Prometheus metrics\n##\nprometheus.tcp.port = {{ .Values.containerPorts.metrics }}\n{{- end }}\n{{- if .Values.memoryHighWatermark.enabled }}\n## Memory Threshold\n##\ntotal_memory_available_override_value = {{ include \"rabbitmq.toBytes\" .Values.resources.limits.memory }}\nvm_memory_high_watermark.{{ .Values.memoryHighWatermark.type }} = {{ .Values.memoryHighWatermark.value }}\n## TCP Listen Options\n##\ntcp_listen_options.backlog = {{ .Values.tcpListenOptions.backlog }}\ntcp_listen_options.nodelay = {{ .Values.tcpListenOptions.nodelay }}\ntcp_listen_options.linger.on      = {{ .Values.tcpListenOptions.linger.lingerOn }}\ntcp_listen_options.linger.timeout = {{ .Values.tcpListenOptions.linger.timeout }}\ntcp_listen_options.keepalive = {{ .Values.tcpListenOptions.keepalive }}\n{{- end }}"` |  |
| configurationExistingSecret | string | `""` |  |
| extraConfiguration | string | `"#default_vhost = {{ .Release.Namespace }}-vhost\n#disk_free_limit.absolute = 50MB"` |  |
| extraConfigurationExistingSecret | string | `""` |  |
| advancedConfiguration | string | `""` |  |
| advancedConfigurationExistingSecret | string | `""` |  |
| featureFlags | string | `""` |  |
| ldap.enabled | bool | `false` |  |
| ldap.uri | string | `""` |  |
| ldap.servers | list | `[]` |  |
| ldap.port | string | `""` |  |
| ldap.userDnPattern | string | `""` |  |
| ldap.binddn | string | `""` |  |
| ldap.bindpw | string | `""` |  |
| ldap.basedn | string | `""` |  |
| ldap.uidField | string | `""` |  |
| ldap.authorisationEnabled | bool | `false` |  |
| ldap.tls.enabled | bool | `false` |  |
| ldap.tls.startTls | bool | `false` |  |
| ldap.tls.skipVerify | bool | `false` |  |
| ldap.tls.verify | string | `"verify_peer"` |  |
| ldap.tls.certificatesMountPath | string | `"/opt/bitnami/rabbitmq/ldap/certs"` |  |
| ldap.tls.certificatesSecret | string | `""` |  |
| ldap.tls.CAFilename | string | `""` |  |
| ldap.tls.certFilename | string | `""` |  |
| ldap.tls.certKeyFilename | string | `""` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| extraSecrets | object | `{}` |  |
| extraSecretsPrependReleaseName | bool | `false` |  |
| replicaCount | int | `1` |  |
| schedulerName | string | `""` |  |
| podManagementPolicy | string | `"OrderedReady"` |  |
| podLabels | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| statefulsetLabels | object | `{}` |  |
| statefulsetAnnotations | object | `{}` |  |
| priorityClassName | string | `""` |  |
| podAffinityPreset | string | `""` |  |
| podAntiAffinityPreset | string | `"soft"` |  |
| nodeAffinityPreset.type | string | `""` |  |
| nodeAffinityPreset.key | string | `""` |  |
| nodeAffinityPreset.values | list | `[]` |  |
| affinity | object | `{}` |  |
| nodeSelector | object | `{}` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |
| podSecurityContext.enabled | bool | `true` |  |
| podSecurityContext.fsGroup | int | `1001` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1001` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| resources.limits | object | `{}` |  |
| resources.requests | object | `{}` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.initialDelaySeconds | int | `120` |  |
| livenessProbe.timeoutSeconds | int | `20` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.failureThreshold | int | `6` |  |
| livenessProbe.successThreshold | int | `1` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.timeoutSeconds | int | `20` |  |
| readinessProbe.periodSeconds | int | `30` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.successThreshold | int | `1` |  |
| startupProbe.enabled | bool | `false` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.timeoutSeconds | int | `20` |  |
| startupProbe.periodSeconds | int | `30` |  |
| startupProbe.failureThreshold | int | `3` |  |
| startupProbe.successThreshold | int | `1` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| customStartupProbe | object | `{}` |  |
| initContainers | list | `[]` |  |
| sidecars | list | `[]` |  |
| pdb.create | bool | `false` |  |
| pdb.minAvailable | int | `1` |  |
| pdb.maxUnavailable | string | `""` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| rbac.create | bool | `true` |  |
| persistence.enabled | bool | `true` |  |
| persistence.storageClass | string | `""` |  |
| persistence.selector | object | `{}` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.mountPath | string | `"/bitnami/rabbitmq/mnesia"` |  |
| persistence.subPath | string | `""` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.labels | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| service.portEnabled | bool | `true` |  |
| service.distPortEnabled | bool | `true` |  |
| service.managerPortEnabled | bool | `true` |  |
| service.epmdPortEnabled | bool | `true` |  |
| service.ports.amqp | int | `5672` |  |
| service.ports.amqpTls | int | `5671` |  |
| service.ports.dist | int | `25672` |  |
| service.ports.manager | int | `15672` |  |
| service.ports.metrics | int | `9419` |  |
| service.ports.epmd | int | `4369` |  |
| service.portNames.amqp | string | `"amqp"` |  |
| service.portNames.amqpTls | string | `"amqp-ssl"` |  |
| service.portNames.dist | string | `"dist"` |  |
| service.portNames.manager | string | `"http-stats"` |  |
| service.portNames.metrics | string | `"metrics"` |  |
| service.portNames.epmd | string | `"epmd"` |  |
| service.nodePorts.amqp | string | `""` |  |
| service.nodePorts.amqpTls | string | `""` |  |
| service.nodePorts.dist | string | `""` |  |
| service.nodePorts.manager | string | `""` |  |
| service.nodePorts.epmd | string | `""` |  |
| service.nodePorts.metrics | string | `""` |  |
| service.extraPorts | list | `[]` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.externalIPs | list | `[]` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.loadBalancerIP | string | `""` |  |
| service.clusterIP | string | `""` |  |
| service.labels | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.annotationsHeadless | object | `{}` |  |
| service.headless.annotations | object | `{}` |  |
| service.sessionAffinity | string | `"None"` |  |
| service.sessionAffinityConfig | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.hostname | string | `"rabbitmq.local"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.tls | bool | `false` |  |
| ingress.selfSigned | bool | `false` |  |
| ingress.extraHosts | list | `[]` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.extraRules | list | `[]` |  |
| ingress.extraTls | list | `[]` |  |
| ingress.secrets | list | `[]` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.existingSecret | string | `""` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.additionalRules | list | `[]` |  |
| metrics.enabled | bool | `false` |  |
| metrics.plugins | string | `"rabbitmq_prometheus"` |  |
| metrics.podAnnotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.podAnnotations."prometheus.io/port" | string | `"{{ .Values.service.ports.metrics }}"` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.interval | string | `"30s"` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `""` |  |
| metrics.serviceMonitor.jobLabel | string | `""` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.honorLabels | bool | `false` |  |
| metrics.serviceMonitor.targetLabels | object | `{}` |  |
| metrics.serviceMonitor.podTargetLabels | object | `{}` |  |
| metrics.serviceMonitor.path | string | `""` |  |
| metrics.serviceMonitor.selector | object | `{}` |  |
| metrics.serviceMonitor.labels | object | `{}` |  |
| metrics.serviceMonitor.annotations | object | `{}` |  |
| metrics.prometheusRule.enabled | bool | `false` |  |
| metrics.prometheusRule.additionalLabels | object | `{}` |  |
| metrics.prometheusRule.namespace | string | `""` |  |
| metrics.prometheusRule.rules | list | `[]` |  |
| volumePermissions.enabled | bool | `false` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/bitnami-shell"` |  |
| volumePermissions.image.tag | string | `"11-debian-11-r111"` |  |
| volumePermissions.image.digest | string | `""` |  |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` |  |
| volumePermissions.image.pullSecrets | list | `[]` |  |
| volumePermissions.resources.limits | object | `{}` |  |
| volumePermissions.resources.requests | object | `{}` |  |
| volumePermissions.containerSecurityContext.runAsUser | int | `0` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-database

![Version: 1.3.5](https://img.shields.io/badge/Version-1.3.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.3.5](https://img.shields.io/badge/AppVersion-1.3.5-informational?style=flat-square)

The Security Compass Database chart

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# minio

![Version: 5.0.7](https://img.shields.io/badge/Version-5.0.7-informational?style=flat-square) ![AppVersion: RELEASE.2023-02-10T18-48-39Z](https://img.shields.io/badge/AppVersion-RELEASE.2023--02--10T18--48--39Z-informational?style=flat-square)

Multi-Cloud Object Storage

## Upstream References
- <https://min.io>

* <https://github.com/minio/minio>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# pas-frontend

![Version: 1.8.10](https://img.shields.io/badge/Version-1.8.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.8.10](https://img.shields.io/badge/AppVersion-1.8.10-informational?style=flat-square)

PAS frontend nginx container

## Upstream References
- <https://docker.sdelements.com>

* <https://agra.sdelements.com/sd-elements/management_command_system>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# rabbitmq

![Version: 12.6.2](https://img.shields.io/badge/Version-12.6.2-informational?style=flat-square) ![AppVersion: 3.12.12](https://img.shields.io/badge/AppVersion-3.12.12-informational?style=flat-square)

RabbitMQ is an open source general-purpose message broker that is designed for consistent, highly-available messaging scenarios (both synchronous and asynchronous).

## Upstream References
- <https://bitnami.com>

* <https://github.com/bitnami/charts/tree/main/bitnami/rabbitmq>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install rabbitmq chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.imageRegistry | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.storageClass | string | `""` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/rabbitmq"` |  |
| image.tag | string | `"3.12.12-debian-11-r0"` |  |
| image.digest | string | `""` |  |
| image.debug | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| fullnameOverride | string | `""` |  |
| namespaceOverride | string | `""` |  |
| kubeVersion | string | `""` |  |
| clusterDomain | string | `"cluster.local"` |  |
| extraDeploy | list | `[]` |  |
| commonAnnotations | object | `{}` |  |
| servicenameOverride | string | `""` |  |
| commonLabels | object | `{}` |  |
| serviceBindings.enabled | bool | `false` |  |
| enableServiceLinks | bool | `true` |  |
| diagnosticMode.enabled | bool | `false` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| hostAliases | list | `[]` |  |
| dnsPolicy | string | `""` |  |
| dnsConfig | object | `{}` |  |
| auth.username | string | `"user"` |  |
| auth.password | string | `""` |  |
| auth.securePassword | bool | `true` |  |
| auth.existingPasswordSecret | string | `""` |  |
| auth.enableLoopbackUser | bool | `false` |  |
| auth.erlangCookie | string | `""` |  |
| auth.existingErlangSecret | string | `""` |  |
| auth.tls.enabled | bool | `false` |  |
| auth.tls.autoGenerated | bool | `false` |  |
| auth.tls.failIfNoPeerCert | bool | `true` |  |
| auth.tls.sslOptionsVerify | string | `"verify_peer"` |  |
| auth.tls.sslOptionsPassword.enabled | bool | `false` |  |
| auth.tls.sslOptionsPassword.existingSecret | string | `""` |  |
| auth.tls.sslOptionsPassword.key | string | `""` |  |
| auth.tls.sslOptionsPassword.password | string | `""` |  |
| auth.tls.caCertificate | string | `""` |  |
| auth.tls.serverCertificate | string | `""` |  |
| auth.tls.serverKey | string | `""` |  |
| auth.tls.existingSecret | string | `""` |  |
| auth.tls.existingSecretFullChain | bool | `false` |  |
| auth.tls.overrideCaCertificate | string | `""` |  |
| logs | string | `"-"` |  |
| ulimitNofiles | string | `"65536"` |  |
| maxAvailableSchedulers | string | `""` |  |
| onlineSchedulers | string | `""` |  |
| memoryHighWatermark.enabled | bool | `false` |  |
| memoryHighWatermark.type | string | `"relative"` |  |
| memoryHighWatermark.value | float | `0.4` |  |
| plugins | string | `"rabbitmq_management rabbitmq_peer_discovery_k8s"` |  |
| communityPlugins | string | `""` |  |
| extraPlugins | string | `"rabbitmq_auth_backend_ldap"` |  |
| clustering.enabled | bool | `true` |  |
| clustering.name | string | `""` |  |
| clustering.addressType | string | `"hostname"` |  |
| clustering.rebalance | bool | `false` |  |
| clustering.forceBoot | bool | `false` |  |
| clustering.partitionHandling | string | `"autoheal"` |  |
| loadDefinition.enabled | bool | `false` |  |
| loadDefinition.file | string | `"/app/load_definition.json"` |  |
| loadDefinition.existingSecret | string | `""` |  |
| command | list | `[]` |  |
| args | list | `[]` |  |
| lifecycleHooks | object | `{}` |  |
| terminationGracePeriodSeconds | int | `120` |  |
| extraEnvVars | list | `[]` |  |
| extraEnvVarsCM | string | `""` |  |
| extraEnvVarsSecret | string | `""` |  |
| containerPorts.amqp | int | `5672` |  |
| containerPorts.amqpTls | int | `5671` |  |
| containerPorts.dist | int | `25672` |  |
| containerPorts.manager | int | `15672` |  |
| containerPorts.epmd | int | `4369` |  |
| containerPorts.metrics | int | `9419` |  |
| initScripts | object | `{}` |  |
| initScriptsCM | string | `""` |  |
| initScriptsSecret | string | `""` |  |
| extraContainerPorts | list | `[]` |  |
| tcpListenOptions.backlog | int | `128` |  |
| tcpListenOptions.nodelay | bool | `true` |  |
| tcpListenOptions.linger.lingerOn | bool | `true` |  |
| tcpListenOptions.linger.timeout | int | `0` |  |
| tcpListenOptions.keepalive | bool | `false` |  |
| configuration | string | `"## Username and password\n##\ndefault_user = {{ .Values.auth.username }}\n{{- if and (not .Values.auth.securePassword) .Values.auth.password }}\ndefault_pass = {{ .Values.auth.password }}\n{{- end }}\n{{- if .Values.clustering.enabled }}\n## Clustering\n##\ncluster_name = {{ default (include \"common.names.fullname\" .) .Values.clustering.name }}\ncluster_formation.peer_discovery_backend  = rabbit_peer_discovery_k8s\ncluster_formation.k8s.host = kubernetes.default\ncluster_formation.k8s.address_type = {{ .Values.clustering.addressType }}\n{{- $svcName := printf \"%s-%s\" (include \"common.names.fullname\" .) (default \"headless\" .Values.servicenameOverride) }}\ncluster_formation.k8s.service_name = {{ $svcName }}\ncluster_formation.k8s.hostname_suffix = .{{ $svcName }}.{{ include \"common.names.namespace\" . }}.svc.{{ .Values.clusterDomain }}\ncluster_formation.node_cleanup.interval = 10\ncluster_formation.node_cleanup.only_log_warning = true\ncluster_partition_handling = {{ .Values.clustering.partitionHandling }}\n{{- end }}\n{{ if and .Values.clustering.enabled .Values.loadDefinition.enabled }}\ncluster_formation.target_cluster_size_hint = {{ .Values.replicaCount }}\n{{ end }}\n{{- if .Values.loadDefinition.enabled }}\nload_definitions = {{ .Values.loadDefinition.file }}\n{{- end }}\n# queue master locator\nqueue_master_locator = min-masters\n# enable loopback user\n{{- if not (empty .Values.auth.username) }}\nloopback_users.{{ .Values.auth.username }} = {{ .Values.auth.enableLoopbackUser }}\n{{- else}}\nloopback_users.guest = {{ .Values.auth.enableLoopbackUser }}\n{{- end }}\n{{ template \"rabbitmq.extraConfiguration\" . }}\n{{- if .Values.auth.tls.enabled }}\nssl_options.verify = {{ .Values.auth.tls.sslOptionsVerify }}\nlisteners.ssl.default = {{ .Values.service.ports.amqpTls }}\nssl_options.fail_if_no_peer_cert = {{ .Values.auth.tls.failIfNoPeerCert }}\nssl_options.cacertfile = /opt/bitnami/rabbitmq/certs/ca_certificate.pem\nssl_options.certfile = /opt/bitnami/rabbitmq/certs/server_certificate.pem\nssl_options.keyfile = /opt/bitnami/rabbitmq/certs/server_key.pem\n{{- if .Values.auth.tls.sslOptionsPassword.enabled }}\nssl_options.password = {{ template \"rabbitmq.tlsSslOptionsPassword\" . }}\n{{- end }}\n{{- end }}\n{{- if .Values.ldap.enabled }}\nauth_backends.1.authn = ldap\nauth_backends.1.authz = {{ ternary \"ldap\" \"internal\" .Values.ldap.authorisationEnabled }}\nauth_backends.2 = internal\n{{- $host :=  list }}\n{{- $port :=  ternary 636 389 .Values.ldap.tls.enabled }}\n{{- if .Values.ldap.uri }}\n{{- $hostPort := get (urlParse .Values.ldap.uri) \"host\" }}\n{{- $host = list (index (splitList \":\" $hostPort) 0) -}}\n{{- if (contains \":\" $hostPort) }}\n{{- $port = index (splitList \":\" $hostPort) 1 -}}\n{{- end }}\n{{- end }}\n{{- range $index, $server := concat $host .Values.ldap.servers }}\nauth_ldap.servers.{{ add $index 1 }} = {{ $server }}\n{{- end }}\nauth_ldap.port = {{ coalesce .Values.ldap.port $port }}\n{{- if or .Values.ldap.user_dn_pattern .Values.ldap.userDnPattern }}\nauth_ldap.user_dn_pattern = {{ coalesce .Values.ldap.user_dn_pattern .Values.ldap.userDnPattern }}\n{{- end }}\n{{- if .Values.ldap.basedn }}\nauth_ldap.dn_lookup_base = {{ .Values.ldap.basedn }}\n{{- end }}\n{{- if .Values.ldap.uidField }}\nauth_ldap.dn_lookup_attribute = {{ .Values.ldap.uidField }}\n{{- end }}\n{{- if .Values.ldap.binddn }}\nauth_ldap.dn_lookup_bind.user_dn = {{ .Values.ldap.binddn }}\nauth_ldap.dn_lookup_bind.password = {{ required \"'ldap.bindpw' is required when 'ldap.binddn' is defined\" .Values.ldap.bindpw }}\n{{- end }}\n{{- if .Values.ldap.tls.enabled }}\nauth_ldap.use_ssl = {{ not .Values.ldap.tls.startTls }}\nauth_ldap.use_starttls = {{ .Values.ldap.tls.startTls }}\n{{- if .Values.ldap.tls.CAFilename }}\nauth_ldap.ssl_options.cacertfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ .Values.ldap.tls.CAFilename }}\n{{- end }}\n{{- if .Values.ldap.tls.certFilename }}\nauth_ldap.ssl_options.certfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ .Values.ldap.tls.certFilename }}\nauth_ldap.ssl_options.keyfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ required \"'ldap.tls.certKeyFilename' is required when 'ldap.tls.certFilename' is defined\" .Values.ldap.tls.certKeyFilename }}\n{{- end }}\n{{- if .Values.ldap.tls.skipVerify }}\nauth_ldap.ssl_options.verify = verify_none\nauth_ldap.ssl_options.fail_if_no_peer_cert = false\n{{- else if .Values.ldap.tls.verify }}\nauth_ldap.ssl_options.verify = {{ .Values.ldap.tls.verify }}\n{{- end }}\n{{- end }}\n{{- end }}\n{{- if .Values.metrics.enabled }}\n## Prometheus metrics\n##\nprometheus.tcp.port = {{ .Values.containerPorts.metrics }}\n{{- end }}\n{{- if .Values.memoryHighWatermark.enabled }}\n## Memory Threshold\n##\ntotal_memory_available_override_value = {{ include \"rabbitmq.toBytes\" .Values.resources.limits.memory }}\nvm_memory_high_watermark.{{ .Values.memoryHighWatermark.type }} = {{ .Values.memoryHighWatermark.value }}\n## TCP Listen Options\n##\ntcp_listen_options.backlog = {{ .Values.tcpListenOptions.backlog }}\ntcp_listen_options.nodelay = {{ .Values.tcpListenOptions.nodelay }}\ntcp_listen_options.linger.on      = {{ .Values.tcpListenOptions.linger.lingerOn }}\ntcp_listen_options.linger.timeout = {{ .Values.tcpListenOptions.linger.timeout }}\ntcp_listen_options.keepalive = {{ .Values.tcpListenOptions.keepalive }}\n{{- end }}"` |  |
| configurationExistingSecret | string | `""` |  |
| extraConfiguration | string | `"#default_vhost = {{ .Release.Namespace }}-vhost\n#disk_free_limit.absolute = 50MB"` |  |
| extraConfigurationExistingSecret | string | `""` |  |
| advancedConfiguration | string | `""` |  |
| advancedConfigurationExistingSecret | string | `""` |  |
| featureFlags | string | `""` |  |
| ldap.enabled | bool | `false` |  |
| ldap.uri | string | `""` |  |
| ldap.servers | list | `[]` |  |
| ldap.port | string | `""` |  |
| ldap.userDnPattern | string | `""` |  |
| ldap.binddn | string | `""` |  |
| ldap.bindpw | string | `""` |  |
| ldap.basedn | string | `""` |  |
| ldap.uidField | string | `""` |  |
| ldap.authorisationEnabled | bool | `false` |  |
| ldap.tls.enabled | bool | `false` |  |
| ldap.tls.startTls | bool | `false` |  |
| ldap.tls.skipVerify | bool | `false` |  |
| ldap.tls.verify | string | `"verify_peer"` |  |
| ldap.tls.certificatesMountPath | string | `"/opt/bitnami/rabbitmq/ldap/certs"` |  |
| ldap.tls.certificatesSecret | string | `""` |  |
| ldap.tls.CAFilename | string | `""` |  |
| ldap.tls.certFilename | string | `""` |  |
| ldap.tls.certKeyFilename | string | `""` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| extraSecrets | object | `{}` |  |
| extraSecretsPrependReleaseName | bool | `false` |  |
| replicaCount | int | `1` |  |
| schedulerName | string | `""` |  |
| podManagementPolicy | string | `"OrderedReady"` |  |
| podLabels | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| statefulsetLabels | object | `{}` |  |
| statefulsetAnnotations | object | `{}` |  |
| priorityClassName | string | `""` |  |
| podAffinityPreset | string | `""` |  |
| podAntiAffinityPreset | string | `"soft"` |  |
| nodeAffinityPreset.type | string | `""` |  |
| nodeAffinityPreset.key | string | `""` |  |
| nodeAffinityPreset.values | list | `[]` |  |
| affinity | object | `{}` |  |
| nodeSelector | object | `{}` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |
| podSecurityContext.enabled | bool | `true` |  |
| podSecurityContext.fsGroup | int | `1001` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1001` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| resources.limits | object | `{}` |  |
| resources.requests | object | `{}` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.initialDelaySeconds | int | `120` |  |
| livenessProbe.timeoutSeconds | int | `20` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.failureThreshold | int | `6` |  |
| livenessProbe.successThreshold | int | `1` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.timeoutSeconds | int | `20` |  |
| readinessProbe.periodSeconds | int | `30` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.successThreshold | int | `1` |  |
| startupProbe.enabled | bool | `false` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.timeoutSeconds | int | `20` |  |
| startupProbe.periodSeconds | int | `30` |  |
| startupProbe.failureThreshold | int | `3` |  |
| startupProbe.successThreshold | int | `1` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| customStartupProbe | object | `{}` |  |
| initContainers | list | `[]` |  |
| sidecars | list | `[]` |  |
| pdb.create | bool | `false` |  |
| pdb.minAvailable | int | `1` |  |
| pdb.maxUnavailable | string | `""` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| rbac.create | bool | `true` |  |
| persistence.enabled | bool | `true` |  |
| persistence.storageClass | string | `""` |  |
| persistence.selector | object | `{}` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.mountPath | string | `"/bitnami/rabbitmq/mnesia"` |  |
| persistence.subPath | string | `""` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.labels | object | `{}` |  |
| persistentVolumeClaimRetentionPolicy.enabled | bool | `false` |  |
| persistentVolumeClaimRetentionPolicy.whenScaled | string | `"Retain"` |  |
| persistentVolumeClaimRetentionPolicy.whenDeleted | string | `"Retain"` |  |
| service.type | string | `"ClusterIP"` |  |
| service.portEnabled | bool | `true` |  |
| service.distPortEnabled | bool | `true` |  |
| service.managerPortEnabled | bool | `true` |  |
| service.epmdPortEnabled | bool | `true` |  |
| service.ports.amqp | int | `5672` |  |
| service.ports.amqpTls | int | `5671` |  |
| service.ports.dist | int | `25672` |  |
| service.ports.manager | int | `15672` |  |
| service.ports.metrics | int | `9419` |  |
| service.ports.epmd | int | `4369` |  |
| service.portNames.amqp | string | `"amqp"` |  |
| service.portNames.amqpTls | string | `"amqp-tls"` |  |
| service.portNames.dist | string | `"dist"` |  |
| service.portNames.manager | string | `"http-stats"` |  |
| service.portNames.metrics | string | `"metrics"` |  |
| service.portNames.epmd | string | `"epmd"` |  |
| service.nodePorts.amqp | string | `""` |  |
| service.nodePorts.amqpTls | string | `""` |  |
| service.nodePorts.dist | string | `""` |  |
| service.nodePorts.manager | string | `""` |  |
| service.nodePorts.epmd | string | `""` |  |
| service.nodePorts.metrics | string | `""` |  |
| service.extraPorts | list | `[]` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.allocateLoadBalancerNodePorts | bool | `true` |  |
| service.externalIPs | list | `[]` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.loadBalancerIP | string | `""` |  |
| service.clusterIP | string | `""` |  |
| service.labels | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.annotationsHeadless | object | `{}` |  |
| service.headless.annotations | object | `{}` |  |
| service.sessionAffinity | string | `"None"` |  |
| service.sessionAffinityConfig | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.hostname | string | `"rabbitmq.local"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.tls | bool | `false` |  |
| ingress.selfSigned | bool | `false` |  |
| ingress.extraHosts | list | `[]` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.extraRules | list | `[]` |  |
| ingress.extraTls | list | `[]` |  |
| ingress.secrets | list | `[]` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.existingSecret | string | `""` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.additionalRules | list | `[]` |  |
| metrics.enabled | bool | `false` |  |
| metrics.plugins | string | `"rabbitmq_prometheus"` |  |
| metrics.podAnnotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.podAnnotations."prometheus.io/port" | string | `"{{ .Values.service.ports.metrics }}"` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.interval | string | `"30s"` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `""` |  |
| metrics.serviceMonitor.jobLabel | string | `""` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.honorLabels | bool | `false` |  |
| metrics.serviceMonitor.targetLabels | object | `{}` |  |
| metrics.serviceMonitor.podTargetLabels | object | `{}` |  |
| metrics.serviceMonitor.path | string | `""` |  |
| metrics.serviceMonitor.params | object | `{}` |  |
| metrics.serviceMonitor.selector | object | `{}` |  |
| metrics.serviceMonitor.labels | object | `{}` |  |
| metrics.serviceMonitor.annotations | object | `{}` |  |
| metrics.prometheusRule.enabled | bool | `false` |  |
| metrics.prometheusRule.additionalLabels | object | `{}` |  |
| metrics.prometheusRule.namespace | string | `""` |  |
| metrics.prometheusRule.rules | list | `[]` |  |
| volumePermissions.enabled | bool | `false` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/os-shell"` |  |
| volumePermissions.image.tag | string | `"11-debian-11-r93"` |  |
| volumePermissions.image.digest | string | `""` |  |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` |  |
| volumePermissions.image.pullSecrets | list | `[]` |  |
| volumePermissions.resources.limits | object | `{}` |  |
| volumePermissions.resources.requests | object | `{}` |  |
| volumePermissions.containerSecurityContext.runAsUser | int | `0` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sde

![Version: 2024.2.77](https://img.shields.io/badge/Version-2024.2.77-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2024.2.77](https://img.shields.io/badge/AppVersion-2024.2.77-informational?style=flat-square)

SDElements by Security Compass Ltd.

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# pas

![Version: 1.8.10](https://img.shields.io/badge/Version-1.8.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.8.10](https://img.shields.io/badge/AppVersion-1.8.10-informational?style=flat-square)

SD Elements Pluggable Framework

## Upstream References
- <https://docker.sdelements.com>

* <https://agra.sdelements.com/sd-elements/management_command_system>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# minio

![Version: 5.0.14](https://img.shields.io/badge/Version-5.0.14-informational?style=flat-square) ![AppVersion: RELEASE.2023-09-30T07-02-29Z](https://img.shields.io/badge/AppVersion-RELEASE.2023--09--30T07--02--29Z-informational?style=flat-square)

Multi-Cloud Object Storage

## Upstream References
- <https://min.io>

* <https://github.com/minio/minio>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# pas-async-worker

![Version: 1.8.10](https://img.shields.io/badge/Version-1.8.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.8.10](https://img.shields.io/badge/AppVersion-1.8.10-informational?style=flat-square)

SD Elements PAS Async Worker Service

## Upstream References
- <https://docker.sdelements.com>

* <https://agra.sdelements.com/sd-elements/management_command_system>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-jitt

![Version: 2024.1.1](https://img.shields.io/badge/Version-2024.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2024.1.1](https://img.shields.io/badge/AppVersion-2024.1.1-informational?style=flat-square)

The Security Compass JITT Chart

## Upstream References
- <https://agra.sdelements.com/sd-elements/sde-training>

* <https://agra.sdelements.com/sd-elements/sde-training>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-mail

![Version: 0.1.16](https://img.shields.io/badge/Version-0.1.16-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.16](https://img.shields.io/badge/AppVersion-0.1.16-informational?style=flat-square)

The Security Compass SMTP mail relay (Exim)

## Upstream References

* <https://agra.sdelements.com/deployment/containers/mail>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# mock-sde

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

SD Elements Mock SDE Service

## Upstream References
- <https://docker.sdelements.com>

* <https://agra.sdelements.com/sd-elements/management_command_system>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-database

![Version: 1.3.6](https://img.shields.io/badge/Version-1.3.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.3.6](https://img.shields.io/badge/AppVersion-1.3.6-informational?style=flat-square)

The Security Compass Database chart

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# rabbitmq

![Version: 11.14.4](https://img.shields.io/badge/Version-11.14.4-informational?style=flat-square) ![AppVersion: 3.11.15](https://img.shields.io/badge/AppVersion-3.11.15-informational?style=flat-square)

RabbitMQ is an open source general-purpose message broker that is designed for consistent, highly-available messaging scenarios (both synchronous and asynchronous).

## Upstream References
- <https://github.com/bitnami/charts/tree/main/bitnami/rabbitmq>

* <https://github.com/bitnami/containers/tree/main/bitnami/rabbitmq>
* <https://www.rabbitmq.com>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install rabbitmq chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.imageRegistry | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.storageClass | string | `""` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/rabbitmq"` |  |
| image.tag | string | `"3.11.15-debian-11-r0"` |  |
| image.digest | string | `""` |  |
| image.debug | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| fullnameOverride | string | `""` |  |
| namespaceOverride | string | `""` |  |
| kubeVersion | string | `""` |  |
| clusterDomain | string | `"cluster.local"` |  |
| extraDeploy | list | `[]` |  |
| commonAnnotations | object | `{}` |  |
| servicenameOverride | string | `""` |  |
| commonLabels | object | `{}` |  |
| serviceBindings.enabled | bool | `false` |  |
| diagnosticMode.enabled | bool | `false` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| hostAliases | list | `[]` |  |
| dnsPolicy | string | `""` |  |
| dnsConfig | object | `{}` |  |
| auth.username | string | `"user"` |  |
| auth.password | string | `""` |  |
| auth.securePassword | bool | `true` |  |
| auth.existingPasswordSecret | string | `""` |  |
| auth.enableLoopbackUser | bool | `false` |  |
| auth.erlangCookie | string | `""` |  |
| auth.existingErlangSecret | string | `""` |  |
| auth.tls.enabled | bool | `false` |  |
| auth.tls.autoGenerated | bool | `false` |  |
| auth.tls.failIfNoPeerCert | bool | `true` |  |
| auth.tls.sslOptionsVerify | string | `"verify_peer"` |  |
| auth.tls.sslOptionsPassword.enabled | bool | `false` |  |
| auth.tls.sslOptionsPassword.existingSecret | string | `""` |  |
| auth.tls.sslOptionsPassword.key | string | `""` |  |
| auth.tls.sslOptionsPassword.password | string | `""` |  |
| auth.tls.caCertificate | string | `""` |  |
| auth.tls.serverCertificate | string | `""` |  |
| auth.tls.serverKey | string | `""` |  |
| auth.tls.existingSecret | string | `""` |  |
| auth.tls.existingSecretFullChain | bool | `false` |  |
| auth.tls.overrideCaCertificate | string | `""` |  |
| logs | string | `"-"` |  |
| ulimitNofiles | string | `"65536"` |  |
| maxAvailableSchedulers | string | `""` |  |
| onlineSchedulers | string | `""` |  |
| memoryHighWatermark.enabled | bool | `false` |  |
| memoryHighWatermark.type | string | `"relative"` |  |
| memoryHighWatermark.value | float | `0.4` |  |
| plugins | string | `"rabbitmq_management rabbitmq_peer_discovery_k8s"` |  |
| communityPlugins | string | `""` |  |
| extraPlugins | string | `"rabbitmq_auth_backend_ldap"` |  |
| clustering.enabled | bool | `true` |  |
| clustering.addressType | string | `"hostname"` |  |
| clustering.rebalance | bool | `false` |  |
| clustering.forceBoot | bool | `false` |  |
| clustering.partitionHandling | string | `"autoheal"` |  |
| loadDefinition.enabled | bool | `false` |  |
| loadDefinition.file | string | `"/app/load_definition.json"` |  |
| loadDefinition.existingSecret | string | `""` |  |
| command | list | `[]` |  |
| args | list | `[]` |  |
| lifecycleHooks | object | `{}` |  |
| terminationGracePeriodSeconds | int | `120` |  |
| extraEnvVars | list | `[]` |  |
| extraEnvVarsCM | string | `""` |  |
| extraEnvVarsSecret | string | `""` |  |
| containerPorts.amqp | int | `5672` |  |
| containerPorts.amqpTls | int | `5671` |  |
| containerPorts.dist | int | `25672` |  |
| containerPorts.manager | int | `15672` |  |
| containerPorts.epmd | int | `4369` |  |
| containerPorts.metrics | int | `9419` |  |
| initScripts | object | `{}` |  |
| initScriptsCM | string | `""` |  |
| initScriptsSecret | string | `""` |  |
| extraContainerPorts | list | `[]` |  |
| tcpListenOptions.backlog | int | `128` |  |
| tcpListenOptions.nodelay | bool | `true` |  |
| tcpListenOptions.linger.lingerOn | bool | `true` |  |
| tcpListenOptions.linger.timeout | int | `0` |  |
| tcpListenOptions.keepalive | bool | `false` |  |
| configuration | string | `"## Username and password\n##\ndefault_user = {{ .Values.auth.username }}\n{{- if and (not .Values.auth.securePassword) .Values.auth.password }}\ndefault_pass = {{ .Values.auth.password }}\n{{- end }}\n{{- if .Values.clustering.enabled }}\n## Clustering\n##\ncluster_formation.peer_discovery_backend  = rabbit_peer_discovery_k8s\ncluster_formation.k8s.host = kubernetes.default\ncluster_formation.node_cleanup.interval = 10\ncluster_formation.node_cleanup.only_log_warning = true\ncluster_partition_handling = {{ .Values.clustering.partitionHandling }}\n{{- end }}\n{{ if and .Values.clustering.enabled .Values.loadDefinition.enabled }}\ncluster_formation.target_cluster_size_hint = {{ .Values.replicaCount }}\n{{ end }}\n{{- if .Values.loadDefinition.enabled }}\nload_definitions = {{ .Values.loadDefinition.file }}\n{{- end }}\n# queue master locator\nqueue_master_locator = min-masters\n# enable loopback user\n{{- if not (empty .Values.auth.username) }}\nloopback_users.{{ .Values.auth.username }} = {{ .Values.auth.enableLoopbackUser }}\n{{- else}}\nloopback_users.guest = {{ .Values.auth.enableLoopbackUser }}\n{{- end }}\n{{ template \"rabbitmq.extraConfiguration\" . }}\n{{- if .Values.auth.tls.enabled }}\nssl_options.verify = {{ .Values.auth.tls.sslOptionsVerify }}\nlisteners.ssl.default = {{ .Values.service.ports.amqpTls }}\nssl_options.fail_if_no_peer_cert = {{ .Values.auth.tls.failIfNoPeerCert }}\nssl_options.cacertfile = /opt/bitnami/rabbitmq/certs/ca_certificate.pem\nssl_options.certfile = /opt/bitnami/rabbitmq/certs/server_certificate.pem\nssl_options.keyfile = /opt/bitnami/rabbitmq/certs/server_key.pem\n{{- if .Values.auth.tls.sslOptionsPassword.enabled }}\nssl_options.password = {{ template \"rabbitmq.tlsSslOptionsPassword\" . }}\n{{- end }}\n{{- end }}\n{{- if .Values.ldap.enabled }}\nauth_backends.1.authn = ldap\nauth_backends.1.authz = {{ ternary \"ldap\" \"internal\" .Values.ldap.authorisationEnabled }}\nauth_backends.2 = internal\n{{- $host :=  list }}\n{{- $port :=  ternary 636 389 .Values.ldap.tls.enabled }}\n{{- if .Values.ldap.uri }}\n{{- $hostPort := get (urlParse .Values.ldap.uri) \"host\" }}\n{{- $host = list (index (splitList \":\" $hostPort) 0) -}}\n{{- if (contains \":\" $hostPort) }}\n{{- $port = index (splitList \":\" $hostPort) 1 -}}\n{{- end }}\n{{- end }}\n{{- range $index, $server := concat $host .Values.ldap.servers }}\nauth_ldap.servers.{{ add $index 1 }} = {{ $server }}\n{{- end }}\nauth_ldap.port = {{ coalesce .Values.ldap.port $port }}\n{{- if or .Values.ldap.user_dn_pattern .Values.ldap.userDnPattern }}\nauth_ldap.user_dn_pattern = {{ coalesce .Values.ldap.user_dn_pattern .Values.ldap.userDnPattern }}\n{{- end }}\n{{- if .Values.ldap.basedn }}\nauth_ldap.dn_lookup_base = {{ .Values.ldap.basedn }}\n{{- end }}\n{{- if .Values.ldap.uidField }}\nauth_ldap.dn_lookup_attribute = {{ .Values.ldap.uidField }}\n{{- end }}\n{{- if .Values.ldap.binddn }}\nauth_ldap.dn_lookup_bind.user_dn = {{ .Values.ldap.binddn }}\nauth_ldap.dn_lookup_bind.password = {{ required \"'ldap.bindpw' is required when 'ldap.binddn' is defined\" .Values.ldap.bindpw }}\n{{- end }}\n{{- if .Values.ldap.tls.enabled }}\nauth_ldap.use_ssl = {{ not .Values.ldap.tls.startTls }}\nauth_ldap.use_starttls = {{ .Values.ldap.tls.startTls }}\n{{- if .Values.ldap.tls.CAFilename }}\nauth_ldap.ssl_options.cacertfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ .Values.ldap.tls.CAFilename }}\n{{- end }}\n{{- if .Values.ldap.tls.certFilename }}\nauth_ldap.ssl_options.certfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ .Values.ldap.tls.certFilename }}\nauth_ldap.ssl_options.keyfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ required \"'ldap.tls.certKeyFilename' is required when 'ldap.tls.certFilename' is defined\" .Values.ldap.tls.certKeyFilename }}\n{{- end }}\n{{- if .Values.ldap.tls.skipVerify }}\nauth_ldap.ssl_options.verify = verify_none\nauth_ldap.ssl_options.fail_if_no_peer_cert = false\n{{- else if .Values.ldap.tls.verify }}\nauth_ldap.ssl_options.verify = {{ .Values.ldap.tls.verify }}\n{{- end }}\n{{- end }}\n{{- end }}\n{{- if .Values.metrics.enabled }}\n## Prometheus metrics\n##\nprometheus.tcp.port = {{ .Values.containerPorts.metrics }}\n{{- end }}\n{{- if .Values.memoryHighWatermark.enabled }}\n## Memory Threshold\n##\ntotal_memory_available_override_value = {{ include \"rabbitmq.toBytes\" .Values.resources.limits.memory }}\nvm_memory_high_watermark.{{ .Values.memoryHighWatermark.type }} = {{ .Values.memoryHighWatermark.value }}\n## TCP Listen Options\n##\ntcp_listen_options.backlog = {{ .Values.tcpListenOptions.backlog }}\ntcp_listen_options.nodelay = {{ .Values.tcpListenOptions.nodelay }}\ntcp_listen_options.linger.on      = {{ .Values.tcpListenOptions.linger.lingerOn }}\ntcp_listen_options.linger.timeout = {{ .Values.tcpListenOptions.linger.timeout }}\ntcp_listen_options.keepalive = {{ .Values.tcpListenOptions.keepalive }}\n{{- end }}"` |  |
| configurationExistingSecret | string | `""` |  |
| extraConfiguration | string | `"#default_vhost = {{ .Release.Namespace }}-vhost\n#disk_free_limit.absolute = 50MB"` |  |
| extraConfigurationExistingSecret | string | `""` |  |
| advancedConfiguration | string | `""` |  |
| advancedConfigurationExistingSecret | string | `""` |  |
| featureFlags | string | `""` |  |
| ldap.enabled | bool | `false` |  |
| ldap.uri | string | `""` |  |
| ldap.servers | list | `[]` |  |
| ldap.port | string | `""` |  |
| ldap.userDnPattern | string | `""` |  |
| ldap.binddn | string | `""` |  |
| ldap.bindpw | string | `""` |  |
| ldap.basedn | string | `""` |  |
| ldap.uidField | string | `""` |  |
| ldap.authorisationEnabled | bool | `false` |  |
| ldap.tls.enabled | bool | `false` |  |
| ldap.tls.startTls | bool | `false` |  |
| ldap.tls.skipVerify | bool | `false` |  |
| ldap.tls.verify | string | `"verify_peer"` |  |
| ldap.tls.certificatesMountPath | string | `"/opt/bitnami/rabbitmq/ldap/certs"` |  |
| ldap.tls.certificatesSecret | string | `""` |  |
| ldap.tls.CAFilename | string | `""` |  |
| ldap.tls.certFilename | string | `""` |  |
| ldap.tls.certKeyFilename | string | `""` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| extraSecrets | object | `{}` |  |
| extraSecretsPrependReleaseName | bool | `false` |  |
| replicaCount | int | `1` |  |
| schedulerName | string | `""` |  |
| podManagementPolicy | string | `"OrderedReady"` |  |
| podLabels | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| statefulsetLabels | object | `{}` |  |
| statefulsetAnnotations | object | `{}` |  |
| priorityClassName | string | `""` |  |
| podAffinityPreset | string | `""` |  |
| podAntiAffinityPreset | string | `"soft"` |  |
| nodeAffinityPreset.type | string | `""` |  |
| nodeAffinityPreset.key | string | `""` |  |
| nodeAffinityPreset.values | list | `[]` |  |
| affinity | object | `{}` |  |
| nodeSelector | object | `{}` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |
| podSecurityContext.enabled | bool | `true` |  |
| podSecurityContext.fsGroup | int | `1001` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1001` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| resources.limits | object | `{}` |  |
| resources.requests | object | `{}` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.initialDelaySeconds | int | `120` |  |
| livenessProbe.timeoutSeconds | int | `20` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.failureThreshold | int | `6` |  |
| livenessProbe.successThreshold | int | `1` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.timeoutSeconds | int | `20` |  |
| readinessProbe.periodSeconds | int | `30` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.successThreshold | int | `1` |  |
| startupProbe.enabled | bool | `false` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.timeoutSeconds | int | `20` |  |
| startupProbe.periodSeconds | int | `30` |  |
| startupProbe.failureThreshold | int | `3` |  |
| startupProbe.successThreshold | int | `1` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| customStartupProbe | object | `{}` |  |
| initContainers | list | `[]` |  |
| sidecars | list | `[]` |  |
| pdb.create | bool | `false` |  |
| pdb.minAvailable | int | `1` |  |
| pdb.maxUnavailable | string | `""` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| rbac.create | bool | `true` |  |
| persistence.enabled | bool | `true` |  |
| persistence.storageClass | string | `""` |  |
| persistence.selector | object | `{}` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.mountPath | string | `"/bitnami/rabbitmq/mnesia"` |  |
| persistence.subPath | string | `""` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.labels | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| service.portEnabled | bool | `true` |  |
| service.distPortEnabled | bool | `true` |  |
| service.managerPortEnabled | bool | `true` |  |
| service.epmdPortEnabled | bool | `true` |  |
| service.ports.amqp | int | `5672` |  |
| service.ports.amqpTls | int | `5671` |  |
| service.ports.dist | int | `25672` |  |
| service.ports.manager | int | `15672` |  |
| service.ports.metrics | int | `9419` |  |
| service.ports.epmd | int | `4369` |  |
| service.portNames.amqp | string | `"amqp"` |  |
| service.portNames.amqpTls | string | `"amqp-ssl"` |  |
| service.portNames.dist | string | `"dist"` |  |
| service.portNames.manager | string | `"http-stats"` |  |
| service.portNames.metrics | string | `"metrics"` |  |
| service.portNames.epmd | string | `"epmd"` |  |
| service.nodePorts.amqp | string | `""` |  |
| service.nodePorts.amqpTls | string | `""` |  |
| service.nodePorts.dist | string | `""` |  |
| service.nodePorts.manager | string | `""` |  |
| service.nodePorts.epmd | string | `""` |  |
| service.nodePorts.metrics | string | `""` |  |
| service.extraPorts | list | `[]` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.externalIPs | list | `[]` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.loadBalancerIP | string | `""` |  |
| service.clusterIP | string | `""` |  |
| service.labels | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.annotationsHeadless | object | `{}` |  |
| service.headless.annotations | object | `{}` |  |
| service.sessionAffinity | string | `"None"` |  |
| service.sessionAffinityConfig | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.hostname | string | `"rabbitmq.local"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.tls | bool | `false` |  |
| ingress.selfSigned | bool | `false` |  |
| ingress.extraHosts | list | `[]` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.extraRules | list | `[]` |  |
| ingress.extraTls | list | `[]` |  |
| ingress.secrets | list | `[]` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.existingSecret | string | `""` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.additionalRules | list | `[]` |  |
| metrics.enabled | bool | `false` |  |
| metrics.plugins | string | `"rabbitmq_prometheus"` |  |
| metrics.podAnnotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.podAnnotations."prometheus.io/port" | string | `"{{ .Values.service.ports.metrics }}"` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.interval | string | `"30s"` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `""` |  |
| metrics.serviceMonitor.jobLabel | string | `""` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.honorLabels | bool | `false` |  |
| metrics.serviceMonitor.targetLabels | object | `{}` |  |
| metrics.serviceMonitor.podTargetLabels | object | `{}` |  |
| metrics.serviceMonitor.path | string | `""` |  |
| metrics.serviceMonitor.selector | object | `{}` |  |
| metrics.serviceMonitor.labels | object | `{}` |  |
| metrics.serviceMonitor.annotations | object | `{}` |  |
| metrics.prometheusRule.enabled | bool | `false` |  |
| metrics.prometheusRule.additionalLabels | object | `{}` |  |
| metrics.prometheusRule.namespace | string | `""` |  |
| metrics.prometheusRule.rules | list | `[]` |  |
| volumePermissions.enabled | bool | `false` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/bitnami-shell"` |  |
| volumePermissions.image.tag | string | `"11-debian-11-r111"` |  |
| volumePermissions.image.digest | string | `""` |  |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` |  |
| volumePermissions.image.pullSecrets | list | `[]` |  |
| volumePermissions.resources.limits | object | `{}` |  |
| volumePermissions.resources.requests | object | `{}` |  |
| volumePermissions.containerSecurityContext.runAsUser | int | `0` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sde

![Version: 2024.2.77](https://img.shields.io/badge/Version-2024.2.77-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2024.2.77](https://img.shields.io/badge/AppVersion-2024.2.77-informational?style=flat-square)

SDElements by Security Compass Ltd.

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# pas-api

![Version: 1.8.10](https://img.shields.io/badge/Version-1.8.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.8.10](https://img.shields.io/badge/AppVersion-1.8.10-informational?style=flat-square)

SD Elements PAS API Service

## Upstream References
- <https://docker.sdelements.com>

* <https://agra.sdelements.com/sd-elements/management_command_system>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# common

![Version: 2.2.4](https://img.shields.io/badge/Version-2.2.4-informational?style=flat-square) ![Type: library](https://img.shields.io/badge/Type-library-informational?style=flat-square) ![AppVersion: 2.2.4](https://img.shields.io/badge/AppVersion-2.2.4-informational?style=flat-square)

A Library Helm Chart for grouping common logic between bitnami charts. This chart is not deployable by itself.

## Upstream References
- <https://github.com/bitnami/charts/tree/main/bitnami/common>

* <https://github.com/bitnami/charts>
* <https://www.bitnami.com/>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install common chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| exampleValue | string | `"common-chart"` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-broker

![Version: 1.3.7](https://img.shields.io/badge/Version-1.3.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.3.7](https://img.shields.io/badge/AppVersion-1.3.7-informational?style=flat-square)

The Security Compass Broker chart

## Upstream References
- <https://agra.sdelements.com/deployment/containers/broker>

* <https://agra.sdelements.com/deployment/containers/broker>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.5](https://img.shields.io/badge/Version-1.1.5-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.5](https://img.shields.io/badge/AppVersion-1.1.5-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# rabbitmq

![Version: 11.14.4](https://img.shields.io/badge/Version-11.14.4-informational?style=flat-square) ![AppVersion: 3.11.15](https://img.shields.io/badge/AppVersion-3.11.15-informational?style=flat-square)

RabbitMQ is an open source general-purpose message broker that is designed for consistent, highly-available messaging scenarios (both synchronous and asynchronous).

## Upstream References
- <https://github.com/bitnami/charts/tree/main/bitnami/rabbitmq>

* <https://github.com/bitnami/containers/tree/main/bitnami/rabbitmq>
* <https://www.rabbitmq.com>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install rabbitmq chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.imageRegistry | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.storageClass | string | `""` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/rabbitmq"` |  |
| image.tag | string | `"3.11.15-debian-11-r0"` |  |
| image.digest | string | `""` |  |
| image.debug | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| fullnameOverride | string | `""` |  |
| namespaceOverride | string | `""` |  |
| kubeVersion | string | `""` |  |
| clusterDomain | string | `"cluster.local"` |  |
| extraDeploy | list | `[]` |  |
| commonAnnotations | object | `{}` |  |
| servicenameOverride | string | `""` |  |
| commonLabels | object | `{}` |  |
| serviceBindings.enabled | bool | `false` |  |
| diagnosticMode.enabled | bool | `false` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| hostAliases | list | `[]` |  |
| dnsPolicy | string | `""` |  |
| dnsConfig | object | `{}` |  |
| auth.username | string | `"user"` |  |
| auth.password | string | `""` |  |
| auth.securePassword | bool | `true` |  |
| auth.existingPasswordSecret | string | `""` |  |
| auth.enableLoopbackUser | bool | `false` |  |
| auth.erlangCookie | string | `""` |  |
| auth.existingErlangSecret | string | `""` |  |
| auth.tls.enabled | bool | `false` |  |
| auth.tls.autoGenerated | bool | `false` |  |
| auth.tls.failIfNoPeerCert | bool | `true` |  |
| auth.tls.sslOptionsVerify | string | `"verify_peer"` |  |
| auth.tls.sslOptionsPassword.enabled | bool | `false` |  |
| auth.tls.sslOptionsPassword.existingSecret | string | `""` |  |
| auth.tls.sslOptionsPassword.key | string | `""` |  |
| auth.tls.sslOptionsPassword.password | string | `""` |  |
| auth.tls.caCertificate | string | `""` |  |
| auth.tls.serverCertificate | string | `""` |  |
| auth.tls.serverKey | string | `""` |  |
| auth.tls.existingSecret | string | `""` |  |
| auth.tls.existingSecretFullChain | bool | `false` |  |
| auth.tls.overrideCaCertificate | string | `""` |  |
| logs | string | `"-"` |  |
| ulimitNofiles | string | `"65536"` |  |
| maxAvailableSchedulers | string | `""` |  |
| onlineSchedulers | string | `""` |  |
| memoryHighWatermark.enabled | bool | `false` |  |
| memoryHighWatermark.type | string | `"relative"` |  |
| memoryHighWatermark.value | float | `0.4` |  |
| plugins | string | `"rabbitmq_management rabbitmq_peer_discovery_k8s"` |  |
| communityPlugins | string | `""` |  |
| extraPlugins | string | `"rabbitmq_auth_backend_ldap"` |  |
| clustering.enabled | bool | `true` |  |
| clustering.addressType | string | `"hostname"` |  |
| clustering.rebalance | bool | `false` |  |
| clustering.forceBoot | bool | `false` |  |
| clustering.partitionHandling | string | `"autoheal"` |  |
| loadDefinition.enabled | bool | `false` |  |
| loadDefinition.file | string | `"/app/load_definition.json"` |  |
| loadDefinition.existingSecret | string | `""` |  |
| command | list | `[]` |  |
| args | list | `[]` |  |
| lifecycleHooks | object | `{}` |  |
| terminationGracePeriodSeconds | int | `120` |  |
| extraEnvVars | list | `[]` |  |
| extraEnvVarsCM | string | `""` |  |
| extraEnvVarsSecret | string | `""` |  |
| containerPorts.amqp | int | `5672` |  |
| containerPorts.amqpTls | int | `5671` |  |
| containerPorts.dist | int | `25672` |  |
| containerPorts.manager | int | `15672` |  |
| containerPorts.epmd | int | `4369` |  |
| containerPorts.metrics | int | `9419` |  |
| initScripts | object | `{}` |  |
| initScriptsCM | string | `""` |  |
| initScriptsSecret | string | `""` |  |
| extraContainerPorts | list | `[]` |  |
| tcpListenOptions.backlog | int | `128` |  |
| tcpListenOptions.nodelay | bool | `true` |  |
| tcpListenOptions.linger.lingerOn | bool | `true` |  |
| tcpListenOptions.linger.timeout | int | `0` |  |
| tcpListenOptions.keepalive | bool | `false` |  |
| configuration | string | `"## Username and password\n##\ndefault_user = {{ .Values.auth.username }}\n{{- if and (not .Values.auth.securePassword) .Values.auth.password }}\ndefault_pass = {{ .Values.auth.password }}\n{{- end }}\n{{- if .Values.clustering.enabled }}\n## Clustering\n##\ncluster_formation.peer_discovery_backend  = rabbit_peer_discovery_k8s\ncluster_formation.k8s.host = kubernetes.default\ncluster_formation.node_cleanup.interval = 10\ncluster_formation.node_cleanup.only_log_warning = true\ncluster_partition_handling = {{ .Values.clustering.partitionHandling }}\n{{- end }}\n{{ if and .Values.clustering.enabled .Values.loadDefinition.enabled }}\ncluster_formation.target_cluster_size_hint = {{ .Values.replicaCount }}\n{{ end }}\n{{- if .Values.loadDefinition.enabled }}\nload_definitions = {{ .Values.loadDefinition.file }}\n{{- end }}\n# queue master locator\nqueue_master_locator = min-masters\n# enable loopback user\n{{- if not (empty .Values.auth.username) }}\nloopback_users.{{ .Values.auth.username }} = {{ .Values.auth.enableLoopbackUser }}\n{{- else}}\nloopback_users.guest = {{ .Values.auth.enableLoopbackUser }}\n{{- end }}\n{{ template \"rabbitmq.extraConfiguration\" . }}\n{{- if .Values.auth.tls.enabled }}\nssl_options.verify = {{ .Values.auth.tls.sslOptionsVerify }}\nlisteners.ssl.default = {{ .Values.service.ports.amqpTls }}\nssl_options.fail_if_no_peer_cert = {{ .Values.auth.tls.failIfNoPeerCert }}\nssl_options.cacertfile = /opt/bitnami/rabbitmq/certs/ca_certificate.pem\nssl_options.certfile = /opt/bitnami/rabbitmq/certs/server_certificate.pem\nssl_options.keyfile = /opt/bitnami/rabbitmq/certs/server_key.pem\n{{- if .Values.auth.tls.sslOptionsPassword.enabled }}\nssl_options.password = {{ template \"rabbitmq.tlsSslOptionsPassword\" . }}\n{{- end }}\n{{- end }}\n{{- if .Values.ldap.enabled }}\nauth_backends.1.authn = ldap\nauth_backends.1.authz = {{ ternary \"ldap\" \"internal\" .Values.ldap.authorisationEnabled }}\nauth_backends.2 = internal\n{{- $host :=  list }}\n{{- $port :=  ternary 636 389 .Values.ldap.tls.enabled }}\n{{- if .Values.ldap.uri }}\n{{- $hostPort := get (urlParse .Values.ldap.uri) \"host\" }}\n{{- $host = list (index (splitList \":\" $hostPort) 0) -}}\n{{- if (contains \":\" $hostPort) }}\n{{- $port = index (splitList \":\" $hostPort) 1 -}}\n{{- end }}\n{{- end }}\n{{- range $index, $server := concat $host .Values.ldap.servers }}\nauth_ldap.servers.{{ add $index 1 }} = {{ $server }}\n{{- end }}\nauth_ldap.port = {{ coalesce .Values.ldap.port $port }}\n{{- if or .Values.ldap.user_dn_pattern .Values.ldap.userDnPattern }}\nauth_ldap.user_dn_pattern = {{ coalesce .Values.ldap.user_dn_pattern .Values.ldap.userDnPattern }}\n{{- end }}\n{{- if .Values.ldap.basedn }}\nauth_ldap.dn_lookup_base = {{ .Values.ldap.basedn }}\n{{- end }}\n{{- if .Values.ldap.uidField }}\nauth_ldap.dn_lookup_attribute = {{ .Values.ldap.uidField }}\n{{- end }}\n{{- if .Values.ldap.binddn }}\nauth_ldap.dn_lookup_bind.user_dn = {{ .Values.ldap.binddn }}\nauth_ldap.dn_lookup_bind.password = {{ required \"'ldap.bindpw' is required when 'ldap.binddn' is defined\" .Values.ldap.bindpw }}\n{{- end }}\n{{- if .Values.ldap.tls.enabled }}\nauth_ldap.use_ssl = {{ not .Values.ldap.tls.startTls }}\nauth_ldap.use_starttls = {{ .Values.ldap.tls.startTls }}\n{{- if .Values.ldap.tls.CAFilename }}\nauth_ldap.ssl_options.cacertfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ .Values.ldap.tls.CAFilename }}\n{{- end }}\n{{- if .Values.ldap.tls.certFilename }}\nauth_ldap.ssl_options.certfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ .Values.ldap.tls.certFilename }}\nauth_ldap.ssl_options.keyfile = {{ .Values.ldap.tls.certificatesMountPath }}/{{ required \"'ldap.tls.certKeyFilename' is required when 'ldap.tls.certFilename' is defined\" .Values.ldap.tls.certKeyFilename }}\n{{- end }}\n{{- if .Values.ldap.tls.skipVerify }}\nauth_ldap.ssl_options.verify = verify_none\nauth_ldap.ssl_options.fail_if_no_peer_cert = false\n{{- else if .Values.ldap.tls.verify }}\nauth_ldap.ssl_options.verify = {{ .Values.ldap.tls.verify }}\n{{- end }}\n{{- end }}\n{{- end }}\n{{- if .Values.metrics.enabled }}\n## Prometheus metrics\n##\nprometheus.tcp.port = {{ .Values.containerPorts.metrics }}\n{{- end }}\n{{- if .Values.memoryHighWatermark.enabled }}\n## Memory Threshold\n##\ntotal_memory_available_override_value = {{ include \"rabbitmq.toBytes\" .Values.resources.limits.memory }}\nvm_memory_high_watermark.{{ .Values.memoryHighWatermark.type }} = {{ .Values.memoryHighWatermark.value }}\n## TCP Listen Options\n##\ntcp_listen_options.backlog = {{ .Values.tcpListenOptions.backlog }}\ntcp_listen_options.nodelay = {{ .Values.tcpListenOptions.nodelay }}\ntcp_listen_options.linger.on      = {{ .Values.tcpListenOptions.linger.lingerOn }}\ntcp_listen_options.linger.timeout = {{ .Values.tcpListenOptions.linger.timeout }}\ntcp_listen_options.keepalive = {{ .Values.tcpListenOptions.keepalive }}\n{{- end }}"` |  |
| configurationExistingSecret | string | `""` |  |
| extraConfiguration | string | `"#default_vhost = {{ .Release.Namespace }}-vhost\n#disk_free_limit.absolute = 50MB"` |  |
| extraConfigurationExistingSecret | string | `""` |  |
| advancedConfiguration | string | `""` |  |
| advancedConfigurationExistingSecret | string | `""` |  |
| featureFlags | string | `""` |  |
| ldap.enabled | bool | `false` |  |
| ldap.uri | string | `""` |  |
| ldap.servers | list | `[]` |  |
| ldap.port | string | `""` |  |
| ldap.userDnPattern | string | `""` |  |
| ldap.binddn | string | `""` |  |
| ldap.bindpw | string | `""` |  |
| ldap.basedn | string | `""` |  |
| ldap.uidField | string | `""` |  |
| ldap.authorisationEnabled | bool | `false` |  |
| ldap.tls.enabled | bool | `false` |  |
| ldap.tls.startTls | bool | `false` |  |
| ldap.tls.skipVerify | bool | `false` |  |
| ldap.tls.verify | string | `"verify_peer"` |  |
| ldap.tls.certificatesMountPath | string | `"/opt/bitnami/rabbitmq/ldap/certs"` |  |
| ldap.tls.certificatesSecret | string | `""` |  |
| ldap.tls.CAFilename | string | `""` |  |
| ldap.tls.certFilename | string | `""` |  |
| ldap.tls.certKeyFilename | string | `""` |  |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| extraSecrets | object | `{}` |  |
| extraSecretsPrependReleaseName | bool | `false` |  |
| replicaCount | int | `1` |  |
| schedulerName | string | `""` |  |
| podManagementPolicy | string | `"OrderedReady"` |  |
| podLabels | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| updateStrategy.type | string | `"RollingUpdate"` |  |
| statefulsetLabels | object | `{}` |  |
| statefulsetAnnotations | object | `{}` |  |
| priorityClassName | string | `""` |  |
| podAffinityPreset | string | `""` |  |
| podAntiAffinityPreset | string | `"soft"` |  |
| nodeAffinityPreset.type | string | `""` |  |
| nodeAffinityPreset.key | string | `""` |  |
| nodeAffinityPreset.values | list | `[]` |  |
| affinity | object | `{}` |  |
| nodeSelector | object | `{}` |  |
| tolerations | list | `[]` |  |
| topologySpreadConstraints | list | `[]` |  |
| podSecurityContext.enabled | bool | `true` |  |
| podSecurityContext.fsGroup | int | `1001` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1001` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| resources.limits | object | `{}` |  |
| resources.requests | object | `{}` |  |
| livenessProbe.enabled | bool | `true` |  |
| livenessProbe.initialDelaySeconds | int | `120` |  |
| livenessProbe.timeoutSeconds | int | `20` |  |
| livenessProbe.periodSeconds | int | `30` |  |
| livenessProbe.failureThreshold | int | `6` |  |
| livenessProbe.successThreshold | int | `1` |  |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.timeoutSeconds | int | `20` |  |
| readinessProbe.periodSeconds | int | `30` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.successThreshold | int | `1` |  |
| startupProbe.enabled | bool | `false` |  |
| startupProbe.initialDelaySeconds | int | `10` |  |
| startupProbe.timeoutSeconds | int | `20` |  |
| startupProbe.periodSeconds | int | `30` |  |
| startupProbe.failureThreshold | int | `3` |  |
| startupProbe.successThreshold | int | `1` |  |
| customLivenessProbe | object | `{}` |  |
| customReadinessProbe | object | `{}` |  |
| customStartupProbe | object | `{}` |  |
| initContainers | list | `[]` |  |
| sidecars | list | `[]` |  |
| pdb.create | bool | `false` |  |
| pdb.minAvailable | int | `1` |  |
| pdb.maxUnavailable | string | `""` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| rbac.create | bool | `true` |  |
| persistence.enabled | bool | `true` |  |
| persistence.storageClass | string | `""` |  |
| persistence.selector | object | `{}` |  |
| persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistence.existingClaim | string | `""` |  |
| persistence.mountPath | string | `"/bitnami/rabbitmq/mnesia"` |  |
| persistence.subPath | string | `""` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.labels | object | `{}` |  |
| service.type | string | `"ClusterIP"` |  |
| service.portEnabled | bool | `true` |  |
| service.distPortEnabled | bool | `true` |  |
| service.managerPortEnabled | bool | `true` |  |
| service.epmdPortEnabled | bool | `true` |  |
| service.ports.amqp | int | `5672` |  |
| service.ports.amqpTls | int | `5671` |  |
| service.ports.dist | int | `25672` |  |
| service.ports.manager | int | `15672` |  |
| service.ports.metrics | int | `9419` |  |
| service.ports.epmd | int | `4369` |  |
| service.portNames.amqp | string | `"amqp"` |  |
| service.portNames.amqpTls | string | `"amqp-ssl"` |  |
| service.portNames.dist | string | `"dist"` |  |
| service.portNames.manager | string | `"http-stats"` |  |
| service.portNames.metrics | string | `"metrics"` |  |
| service.portNames.epmd | string | `"epmd"` |  |
| service.nodePorts.amqp | string | `""` |  |
| service.nodePorts.amqpTls | string | `""` |  |
| service.nodePorts.dist | string | `""` |  |
| service.nodePorts.manager | string | `""` |  |
| service.nodePorts.epmd | string | `""` |  |
| service.nodePorts.metrics | string | `""` |  |
| service.extraPorts | list | `[]` |  |
| service.loadBalancerSourceRanges | list | `[]` |  |
| service.externalIPs | list | `[]` |  |
| service.externalTrafficPolicy | string | `"Cluster"` |  |
| service.loadBalancerIP | string | `""` |  |
| service.clusterIP | string | `""` |  |
| service.labels | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.annotationsHeadless | object | `{}` |  |
| service.headless.annotations | object | `{}` |  |
| service.sessionAffinity | string | `"None"` |  |
| service.sessionAffinityConfig | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.path | string | `"/"` |  |
| ingress.pathType | string | `"ImplementationSpecific"` |  |
| ingress.hostname | string | `"rabbitmq.local"` |  |
| ingress.annotations | object | `{}` |  |
| ingress.tls | bool | `false` |  |
| ingress.selfSigned | bool | `false` |  |
| ingress.extraHosts | list | `[]` |  |
| ingress.extraPaths | list | `[]` |  |
| ingress.extraRules | list | `[]` |  |
| ingress.extraTls | list | `[]` |  |
| ingress.secrets | list | `[]` |  |
| ingress.ingressClassName | string | `""` |  |
| ingress.existingSecret | string | `""` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.allowExternal | bool | `true` |  |
| networkPolicy.additionalRules | list | `[]` |  |
| metrics.enabled | bool | `false` |  |
| metrics.plugins | string | `"rabbitmq_prometheus"` |  |
| metrics.podAnnotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.podAnnotations."prometheus.io/port" | string | `"{{ .Values.service.ports.metrics }}"` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.interval | string | `"30s"` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `""` |  |
| metrics.serviceMonitor.jobLabel | string | `""` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.honorLabels | bool | `false` |  |
| metrics.serviceMonitor.targetLabels | object | `{}` |  |
| metrics.serviceMonitor.podTargetLabels | object | `{}` |  |
| metrics.serviceMonitor.path | string | `""` |  |
| metrics.serviceMonitor.selector | object | `{}` |  |
| metrics.serviceMonitor.labels | object | `{}` |  |
| metrics.serviceMonitor.annotations | object | `{}` |  |
| metrics.prometheusRule.enabled | bool | `false` |  |
| metrics.prometheusRule.additionalLabels | object | `{}` |  |
| metrics.prometheusRule.namespace | string | `""` |  |
| metrics.prometheusRule.rules | list | `[]` |  |
| volumePermissions.enabled | bool | `false` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/bitnami-shell"` |  |
| volumePermissions.image.tag | string | `"11-debian-11-r111"` |  |
| volumePermissions.image.digest | string | `""` |  |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` |  |
| volumePermissions.image.pullSecrets | list | `[]` |  |
| volumePermissions.resources.limits | object | `{}` |  |
| volumePermissions.resources.requests | object | `{}` |  |
| volumePermissions.containerSecurityContext.runAsUser | int | `0` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# common

![Version: 2.2.4](https://img.shields.io/badge/Version-2.2.4-informational?style=flat-square) ![Type: library](https://img.shields.io/badge/Type-library-informational?style=flat-square) ![AppVersion: 2.2.4](https://img.shields.io/badge/AppVersion-2.2.4-informational?style=flat-square)

A Library Helm Chart for grouping common logic between bitnami charts. This chart is not deployable by itself.

## Upstream References
- <https://github.com/bitnami/charts/tree/main/bitnami/common>

* <https://github.com/bitnami/charts>
* <https://www.bitnami.com/>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install common chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| exampleValue | string | `"common-chart"` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-datastore

![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.2](https://img.shields.io/badge/AppVersion-1.0.2-informational?style=flat-square)

The Security Compass datastore (Redis)

## Upstream References

* <https://agra.sdelements.com/deployment/containers/datastore>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# postgresql

![Version: 12.12.10](https://img.shields.io/badge/Version-12.12.10-informational?style=flat-square) ![AppVersion: 15.4.0](https://img.shields.io/badge/AppVersion-15.4.0-informational?style=flat-square)

PostgreSQL (Postgres) is an open source object-relational database known for reliability and data integrity. ACID-compliant, it supports foreign keys, joins, views, triggers and stored procedures.

## Upstream References
- <https://bitnami.com>

* <https://github.com/bitnami/charts/tree/main/bitnami/postgresql>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install postgresql chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.imageRegistry | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.storageClass | string | `""` |  |
| global.postgresql.auth.postgresPassword | string | `""` |  |
| global.postgresql.auth.username | string | `""` |  |
| global.postgresql.auth.password | string | `""` |  |
| global.postgresql.auth.database | string | `""` |  |
| global.postgresql.auth.existingSecret | string | `""` |  |
| global.postgresql.auth.secretKeys.adminPasswordKey | string | `""` |  |
| global.postgresql.auth.secretKeys.userPasswordKey | string | `""` |  |
| global.postgresql.auth.secretKeys.replicationPasswordKey | string | `""` |  |
| global.postgresql.service.ports.postgresql | string | `""` |  |
| kubeVersion | string | `""` |  |
| nameOverride | string | `""` |  |
| fullnameOverride | string | `""` |  |
| clusterDomain | string | `"cluster.local"` |  |
| extraDeploy | list | `[]` |  |
| commonLabels | object | `{}` |  |
| commonAnnotations | object | `{}` |  |
| diagnosticMode.enabled | bool | `false` |  |
| diagnosticMode.command[0] | string | `"sleep"` |  |
| diagnosticMode.args[0] | string | `"infinity"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"bitnami/postgresql"` |  |
| image.tag | string | `"15.4.0-debian-11-r45"` |  |
| image.digest | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.debug | bool | `false` |  |
| auth.enablePostgresUser | bool | `true` |  |
| auth.postgresPassword | string | `""` |  |
| auth.username | string | `""` |  |
| auth.password | string | `""` |  |
| auth.database | string | `""` |  |
| auth.replicationUsername | string | `"repl_user"` |  |
| auth.replicationPassword | string | `""` |  |
| auth.existingSecret | string | `""` |  |
| auth.secretKeys.adminPasswordKey | string | `"postgres-password"` |  |
| auth.secretKeys.userPasswordKey | string | `"password"` |  |
| auth.secretKeys.replicationPasswordKey | string | `"replication-password"` |  |
| auth.usePasswordFiles | bool | `false` |  |
| architecture | string | `"standalone"` |  |
| replication.synchronousCommit | string | `"off"` |  |
| replication.numSynchronousReplicas | int | `0` |  |
| replication.applicationName | string | `"my_application"` |  |
| containerPorts.postgresql | int | `5432` |  |
| audit.logHostname | bool | `false` |  |
| audit.logConnections | bool | `false` |  |
| audit.logDisconnections | bool | `false` |  |
| audit.pgAuditLog | string | `""` |  |
| audit.pgAuditLogCatalog | string | `"off"` |  |
| audit.clientMinMessages | string | `"error"` |  |
| audit.logLinePrefix | string | `""` |  |
| audit.logTimezone | string | `""` |  |
| ldap.enabled | bool | `false` |  |
| ldap.server | string | `""` |  |
| ldap.port | string | `""` |  |
| ldap.prefix | string | `""` |  |
| ldap.suffix | string | `""` |  |
| ldap.basedn | string | `""` |  |
| ldap.binddn | string | `""` |  |
| ldap.bindpw | string | `""` |  |
| ldap.searchAttribute | string | `""` |  |
| ldap.searchFilter | string | `""` |  |
| ldap.scheme | string | `""` |  |
| ldap.tls.enabled | bool | `false` |  |
| ldap.uri | string | `""` |  |
| postgresqlDataDir | string | `"/bitnami/postgresql/data"` |  |
| postgresqlSharedPreloadLibraries | string | `"pgaudit"` |  |
| shmVolume.enabled | bool | `true` |  |
| shmVolume.sizeLimit | string | `""` |  |
| tls.enabled | bool | `false` |  |
| tls.autoGenerated | bool | `false` |  |
| tls.preferServerCiphers | bool | `true` |  |
| tls.certificatesSecret | string | `""` |  |
| tls.certFilename | string | `""` |  |
| tls.certKeyFilename | string | `""` |  |
| tls.certCAFilename | string | `""` |  |
| tls.crlFilename | string | `""` |  |
| primary.name | string | `"primary"` |  |
| primary.configuration | string | `""` |  |
| primary.pgHbaConfiguration | string | `""` |  |
| primary.existingConfigmap | string | `""` |  |
| primary.extendedConfiguration | string | `""` |  |
| primary.existingExtendedConfigmap | string | `""` |  |
| primary.initdb.args | string | `""` |  |
| primary.initdb.postgresqlWalDir | string | `""` |  |
| primary.initdb.scripts | object | `{}` |  |
| primary.initdb.scriptsConfigMap | string | `""` |  |
| primary.initdb.scriptsSecret | string | `""` |  |
| primary.initdb.user | string | `""` |  |
| primary.initdb.password | string | `""` |  |
| primary.standby.enabled | bool | `false` |  |
| primary.standby.primaryHost | string | `""` |  |
| primary.standby.primaryPort | string | `""` |  |
| primary.extraEnvVars | list | `[]` |  |
| primary.extraEnvVarsCM | string | `""` |  |
| primary.extraEnvVarsSecret | string | `""` |  |
| primary.command | list | `[]` |  |
| primary.args | list | `[]` |  |
| primary.livenessProbe.enabled | bool | `true` |  |
| primary.livenessProbe.initialDelaySeconds | int | `30` |  |
| primary.livenessProbe.periodSeconds | int | `10` |  |
| primary.livenessProbe.timeoutSeconds | int | `5` |  |
| primary.livenessProbe.failureThreshold | int | `6` |  |
| primary.livenessProbe.successThreshold | int | `1` |  |
| primary.readinessProbe.enabled | bool | `true` |  |
| primary.readinessProbe.initialDelaySeconds | int | `5` |  |
| primary.readinessProbe.periodSeconds | int | `10` |  |
| primary.readinessProbe.timeoutSeconds | int | `5` |  |
| primary.readinessProbe.failureThreshold | int | `6` |  |
| primary.readinessProbe.successThreshold | int | `1` |  |
| primary.startupProbe.enabled | bool | `false` |  |
| primary.startupProbe.initialDelaySeconds | int | `30` |  |
| primary.startupProbe.periodSeconds | int | `10` |  |
| primary.startupProbe.timeoutSeconds | int | `1` |  |
| primary.startupProbe.failureThreshold | int | `15` |  |
| primary.startupProbe.successThreshold | int | `1` |  |
| primary.customLivenessProbe | object | `{}` |  |
| primary.customReadinessProbe | object | `{}` |  |
| primary.customStartupProbe | object | `{}` |  |
| primary.lifecycleHooks | object | `{}` |  |
| primary.resources.limits | object | `{}` |  |
| primary.resources.requests.memory | string | `"256Mi"` |  |
| primary.resources.requests.cpu | string | `"250m"` |  |
| primary.podSecurityContext.enabled | bool | `true` |  |
| primary.podSecurityContext.fsGroup | int | `1001` |  |
| primary.containerSecurityContext.enabled | bool | `true` |  |
| primary.containerSecurityContext.runAsUser | int | `1001` |  |
| primary.containerSecurityContext.runAsGroup | int | `0` |  |
| primary.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| primary.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| primary.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| primary.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| primary.hostAliases | list | `[]` |  |
| primary.hostNetwork | bool | `false` |  |
| primary.hostIPC | bool | `false` |  |
| primary.labels | object | `{}` |  |
| primary.annotations | object | `{}` |  |
| primary.podLabels | object | `{}` |  |
| primary.podAnnotations | object | `{}` |  |
| primary.podAffinityPreset | string | `""` |  |
| primary.podAntiAffinityPreset | string | `"soft"` |  |
| primary.nodeAffinityPreset.type | string | `""` |  |
| primary.nodeAffinityPreset.key | string | `""` |  |
| primary.nodeAffinityPreset.values | list | `[]` |  |
| primary.affinity | object | `{}` |  |
| primary.nodeSelector | object | `{}` |  |
| primary.tolerations | list | `[]` |  |
| primary.topologySpreadConstraints | list | `[]` |  |
| primary.priorityClassName | string | `""` |  |
| primary.schedulerName | string | `""` |  |
| primary.terminationGracePeriodSeconds | string | `""` |  |
| primary.updateStrategy.type | string | `"RollingUpdate"` |  |
| primary.updateStrategy.rollingUpdate | object | `{}` |  |
| primary.extraVolumeMounts | list | `[]` |  |
| primary.extraVolumes | list | `[]` |  |
| primary.sidecars | list | `[]` |  |
| primary.initContainers | list | `[]` |  |
| primary.extraPodSpec | object | `{}` |  |
| primary.service.type | string | `"ClusterIP"` |  |
| primary.service.ports.postgresql | int | `5432` |  |
| primary.service.nodePorts.postgresql | string | `""` |  |
| primary.service.clusterIP | string | `""` |  |
| primary.service.annotations | object | `{}` |  |
| primary.service.loadBalancerIP | string | `""` |  |
| primary.service.externalTrafficPolicy | string | `"Cluster"` |  |
| primary.service.loadBalancerSourceRanges | list | `[]` |  |
| primary.service.extraPorts | list | `[]` |  |
| primary.service.sessionAffinity | string | `"None"` |  |
| primary.service.sessionAffinityConfig | object | `{}` |  |
| primary.service.headless.annotations | object | `{}` |  |
| primary.persistence.enabled | bool | `true` |  |
| primary.persistence.existingClaim | string | `""` |  |
| primary.persistence.mountPath | string | `"/bitnami/postgresql"` |  |
| primary.persistence.subPath | string | `""` |  |
| primary.persistence.storageClass | string | `""` |  |
| primary.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| primary.persistence.size | string | `"8Gi"` |  |
| primary.persistence.annotations | object | `{}` |  |
| primary.persistence.labels | object | `{}` |  |
| primary.persistence.selector | object | `{}` |  |
| primary.persistence.dataSource | object | `{}` |  |
| primary.persistentVolumeClaimRetentionPolicy.enabled | bool | `false` |  |
| primary.persistentVolumeClaimRetentionPolicy.whenScaled | string | `"Retain"` |  |
| primary.persistentVolumeClaimRetentionPolicy.whenDeleted | string | `"Retain"` |  |
| readReplicas.name | string | `"read"` |  |
| readReplicas.replicaCount | int | `1` |  |
| readReplicas.extendedConfiguration | string | `""` |  |
| readReplicas.extraEnvVars | list | `[]` |  |
| readReplicas.extraEnvVarsCM | string | `""` |  |
| readReplicas.extraEnvVarsSecret | string | `""` |  |
| readReplicas.command | list | `[]` |  |
| readReplicas.args | list | `[]` |  |
| readReplicas.livenessProbe.enabled | bool | `true` |  |
| readReplicas.livenessProbe.initialDelaySeconds | int | `30` |  |
| readReplicas.livenessProbe.periodSeconds | int | `10` |  |
| readReplicas.livenessProbe.timeoutSeconds | int | `5` |  |
| readReplicas.livenessProbe.failureThreshold | int | `6` |  |
| readReplicas.livenessProbe.successThreshold | int | `1` |  |
| readReplicas.readinessProbe.enabled | bool | `true` |  |
| readReplicas.readinessProbe.initialDelaySeconds | int | `5` |  |
| readReplicas.readinessProbe.periodSeconds | int | `10` |  |
| readReplicas.readinessProbe.timeoutSeconds | int | `5` |  |
| readReplicas.readinessProbe.failureThreshold | int | `6` |  |
| readReplicas.readinessProbe.successThreshold | int | `1` |  |
| readReplicas.startupProbe.enabled | bool | `false` |  |
| readReplicas.startupProbe.initialDelaySeconds | int | `30` |  |
| readReplicas.startupProbe.periodSeconds | int | `10` |  |
| readReplicas.startupProbe.timeoutSeconds | int | `1` |  |
| readReplicas.startupProbe.failureThreshold | int | `15` |  |
| readReplicas.startupProbe.successThreshold | int | `1` |  |
| readReplicas.customLivenessProbe | object | `{}` |  |
| readReplicas.customReadinessProbe | object | `{}` |  |
| readReplicas.customStartupProbe | object | `{}` |  |
| readReplicas.lifecycleHooks | object | `{}` |  |
| readReplicas.resources.limits | object | `{}` |  |
| readReplicas.resources.requests.memory | string | `"256Mi"` |  |
| readReplicas.resources.requests.cpu | string | `"250m"` |  |
| readReplicas.podSecurityContext.enabled | bool | `true` |  |
| readReplicas.podSecurityContext.fsGroup | int | `1001` |  |
| readReplicas.containerSecurityContext.enabled | bool | `true` |  |
| readReplicas.containerSecurityContext.runAsUser | int | `1001` |  |
| readReplicas.containerSecurityContext.runAsGroup | int | `0` |  |
| readReplicas.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| readReplicas.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| readReplicas.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| readReplicas.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| readReplicas.hostAliases | list | `[]` |  |
| readReplicas.hostNetwork | bool | `false` |  |
| readReplicas.hostIPC | bool | `false` |  |
| readReplicas.labels | object | `{}` |  |
| readReplicas.annotations | object | `{}` |  |
| readReplicas.podLabels | object | `{}` |  |
| readReplicas.podAnnotations | object | `{}` |  |
| readReplicas.podAffinityPreset | string | `""` |  |
| readReplicas.podAntiAffinityPreset | string | `"soft"` |  |
| readReplicas.nodeAffinityPreset.type | string | `""` |  |
| readReplicas.nodeAffinityPreset.key | string | `""` |  |
| readReplicas.nodeAffinityPreset.values | list | `[]` |  |
| readReplicas.affinity | object | `{}` |  |
| readReplicas.nodeSelector | object | `{}` |  |
| readReplicas.tolerations | list | `[]` |  |
| readReplicas.topologySpreadConstraints | list | `[]` |  |
| readReplicas.priorityClassName | string | `""` |  |
| readReplicas.schedulerName | string | `""` |  |
| readReplicas.terminationGracePeriodSeconds | string | `""` |  |
| readReplicas.updateStrategy.type | string | `"RollingUpdate"` |  |
| readReplicas.updateStrategy.rollingUpdate | object | `{}` |  |
| readReplicas.extraVolumeMounts | list | `[]` |  |
| readReplicas.extraVolumes | list | `[]` |  |
| readReplicas.sidecars | list | `[]` |  |
| readReplicas.initContainers | list | `[]` |  |
| readReplicas.extraPodSpec | object | `{}` |  |
| readReplicas.service.type | string | `"ClusterIP"` |  |
| readReplicas.service.ports.postgresql | int | `5432` |  |
| readReplicas.service.nodePorts.postgresql | string | `""` |  |
| readReplicas.service.clusterIP | string | `""` |  |
| readReplicas.service.annotations | object | `{}` |  |
| readReplicas.service.loadBalancerIP | string | `""` |  |
| readReplicas.service.externalTrafficPolicy | string | `"Cluster"` |  |
| readReplicas.service.loadBalancerSourceRanges | list | `[]` |  |
| readReplicas.service.extraPorts | list | `[]` |  |
| readReplicas.service.sessionAffinity | string | `"None"` |  |
| readReplicas.service.sessionAffinityConfig | object | `{}` |  |
| readReplicas.service.headless.annotations | object | `{}` |  |
| readReplicas.persistence.enabled | bool | `true` |  |
| readReplicas.persistence.existingClaim | string | `""` |  |
| readReplicas.persistence.mountPath | string | `"/bitnami/postgresql"` |  |
| readReplicas.persistence.subPath | string | `""` |  |
| readReplicas.persistence.storageClass | string | `""` |  |
| readReplicas.persistence.accessModes[0] | string | `"ReadWriteOnce"` |  |
| readReplicas.persistence.size | string | `"8Gi"` |  |
| readReplicas.persistence.annotations | object | `{}` |  |
| readReplicas.persistence.labels | object | `{}` |  |
| readReplicas.persistence.selector | object | `{}` |  |
| readReplicas.persistence.dataSource | object | `{}` |  |
| readReplicas.persistentVolumeClaimRetentionPolicy.enabled | bool | `false` |  |
| readReplicas.persistentVolumeClaimRetentionPolicy.whenScaled | string | `"Retain"` |  |
| readReplicas.persistentVolumeClaimRetentionPolicy.whenDeleted | string | `"Retain"` |  |
| backup.enabled | bool | `false` |  |
| backup.cronjob.schedule | string | `"@daily"` |  |
| backup.cronjob.concurrencyPolicy | string | `"Allow"` |  |
| backup.cronjob.failedJobsHistoryLimit | int | `1` |  |
| backup.cronjob.successfulJobsHistoryLimit | int | `3` |  |
| backup.cronjob.startingDeadlineSeconds | string | `""` |  |
| backup.cronjob.ttlSecondsAfterFinished | string | `""` |  |
| backup.cronjob.restartPolicy | string | `"OnFailure"` |  |
| backup.cronjob.podSecurityContext.enabled | bool | `true` |  |
| backup.cronjob.podSecurityContext.fsGroup | int | `1001` |  |
| backup.cronjob.containerSecurityContext.runAsUser | int | `1001` |  |
| backup.cronjob.containerSecurityContext.runAsGroup | int | `0` |  |
| backup.cronjob.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| backup.cronjob.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| backup.cronjob.containerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| backup.cronjob.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| backup.cronjob.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| backup.cronjob.command[0] | string | `"/bin/sh"` |  |
| backup.cronjob.command[1] | string | `"-c"` |  |
| backup.cronjob.command[2] | string | `"pg_dumpall --clean --if-exists --load-via-partition-root --quote-all-identifiers --no-password --file=${PGDUMP_DIR}/pg_dumpall-$(date '+%Y-%m-%d-%H-%M').pgdump"` |  |
| backup.cronjob.labels | object | `{}` |  |
| backup.cronjob.annotations | object | `{}` |  |
| backup.cronjob.nodeSelector | object | `{}` |  |
| backup.cronjob.storage.existingClaim | string | `""` |  |
| backup.cronjob.storage.resourcePolicy | string | `""` |  |
| backup.cronjob.storage.storageClass | string | `""` |  |
| backup.cronjob.storage.accessModes[0] | string | `"ReadWriteOnce"` |  |
| backup.cronjob.storage.size | string | `"8Gi"` |  |
| backup.cronjob.storage.annotations | object | `{}` |  |
| backup.cronjob.storage.mountPath | string | `"/backup/pgdump"` |  |
| backup.cronjob.storage.subPath | string | `""` |  |
| backup.cronjob.storage.volumeClaimTemplates.selector | object | `{}` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.metrics.enabled | bool | `false` |  |
| networkPolicy.metrics.namespaceSelector | object | `{}` |  |
| networkPolicy.metrics.podSelector | object | `{}` |  |
| networkPolicy.ingressRules.primaryAccessOnlyFrom.enabled | bool | `false` |  |
| networkPolicy.ingressRules.primaryAccessOnlyFrom.namespaceSelector | object | `{}` |  |
| networkPolicy.ingressRules.primaryAccessOnlyFrom.podSelector | object | `{}` |  |
| networkPolicy.ingressRules.primaryAccessOnlyFrom.customRules | list | `[]` |  |
| networkPolicy.ingressRules.readReplicasAccessOnlyFrom.enabled | bool | `false` |  |
| networkPolicy.ingressRules.readReplicasAccessOnlyFrom.namespaceSelector | object | `{}` |  |
| networkPolicy.ingressRules.readReplicasAccessOnlyFrom.podSelector | object | `{}` |  |
| networkPolicy.ingressRules.readReplicasAccessOnlyFrom.customRules | list | `[]` |  |
| networkPolicy.egressRules.denyConnectionsToExternal | bool | `false` |  |
| networkPolicy.egressRules.customRules | list | `[]` |  |
| volumePermissions.enabled | bool | `false` |  |
| volumePermissions.image.registry | string | `"docker.io"` |  |
| volumePermissions.image.repository | string | `"bitnami/os-shell"` |  |
| volumePermissions.image.tag | string | `"11-debian-11-r77"` |  |
| volumePermissions.image.digest | string | `""` |  |
| volumePermissions.image.pullPolicy | string | `"IfNotPresent"` |  |
| volumePermissions.image.pullSecrets | list | `[]` |  |
| volumePermissions.resources.limits | object | `{}` |  |
| volumePermissions.resources.requests | object | `{}` |  |
| volumePermissions.containerSecurityContext.runAsUser | int | `0` |  |
| volumePermissions.containerSecurityContext.runAsGroup | int | `0` |  |
| volumePermissions.containerSecurityContext.runAsNonRoot | bool | `false` |  |
| volumePermissions.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| serviceBindings.enabled | bool | `false` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| rbac.create | bool | `false` |  |
| rbac.rules | list | `[]` |  |
| psp.create | bool | `false` |  |
| metrics.enabled | bool | `false` |  |
| metrics.image.registry | string | `"docker.io"` |  |
| metrics.image.repository | string | `"bitnami/postgres-exporter"` |  |
| metrics.image.tag | string | `"0.14.0-debian-11-r2"` |  |
| metrics.image.digest | string | `""` |  |
| metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| metrics.image.pullSecrets | list | `[]` |  |
| metrics.customMetrics | object | `{}` |  |
| metrics.extraEnvVars | list | `[]` |  |
| metrics.containerSecurityContext.enabled | bool | `true` |  |
| metrics.containerSecurityContext.runAsUser | int | `1001` |  |
| metrics.containerSecurityContext.runAsGroup | int | `0` |  |
| metrics.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| metrics.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| metrics.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| metrics.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| metrics.livenessProbe.enabled | bool | `true` |  |
| metrics.livenessProbe.initialDelaySeconds | int | `5` |  |
| metrics.livenessProbe.periodSeconds | int | `10` |  |
| metrics.livenessProbe.timeoutSeconds | int | `5` |  |
| metrics.livenessProbe.failureThreshold | int | `6` |  |
| metrics.livenessProbe.successThreshold | int | `1` |  |
| metrics.readinessProbe.enabled | bool | `true` |  |
| metrics.readinessProbe.initialDelaySeconds | int | `5` |  |
| metrics.readinessProbe.periodSeconds | int | `10` |  |
| metrics.readinessProbe.timeoutSeconds | int | `5` |  |
| metrics.readinessProbe.failureThreshold | int | `6` |  |
| metrics.readinessProbe.successThreshold | int | `1` |  |
| metrics.startupProbe.enabled | bool | `false` |  |
| metrics.startupProbe.initialDelaySeconds | int | `10` |  |
| metrics.startupProbe.periodSeconds | int | `10` |  |
| metrics.startupProbe.timeoutSeconds | int | `1` |  |
| metrics.startupProbe.failureThreshold | int | `15` |  |
| metrics.startupProbe.successThreshold | int | `1` |  |
| metrics.customLivenessProbe | object | `{}` |  |
| metrics.customReadinessProbe | object | `{}` |  |
| metrics.customStartupProbe | object | `{}` |  |
| metrics.containerPorts.metrics | int | `9187` |  |
| metrics.resources.limits | object | `{}` |  |
| metrics.resources.requests | object | `{}` |  |
| metrics.service.ports.metrics | int | `9187` |  |
| metrics.service.clusterIP | string | `""` |  |
| metrics.service.sessionAffinity | string | `"None"` |  |
| metrics.service.annotations."prometheus.io/scrape" | string | `"true"` |  |
| metrics.service.annotations."prometheus.io/port" | string | `"{{ .Values.metrics.service.ports.metrics }}"` |  |
| metrics.serviceMonitor.enabled | bool | `false` |  |
| metrics.serviceMonitor.namespace | string | `""` |  |
| metrics.serviceMonitor.interval | string | `""` |  |
| metrics.serviceMonitor.scrapeTimeout | string | `""` |  |
| metrics.serviceMonitor.labels | object | `{}` |  |
| metrics.serviceMonitor.selector | object | `{}` |  |
| metrics.serviceMonitor.relabelings | list | `[]` |  |
| metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| metrics.serviceMonitor.honorLabels | bool | `false` |  |
| metrics.serviceMonitor.jobLabel | string | `""` |  |
| metrics.prometheusRule.enabled | bool | `false` |  |
| metrics.prometheusRule.namespace | string | `""` |  |
| metrics.prometheusRule.labels | object | `{}` |  |
| metrics.prometheusRule.rules | list | `[]` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# ingress-nginx

![Version: 4.8.2](https://img.shields.io/badge/Version-4.8.2-informational?style=flat-square) ![AppVersion: 1.9.3](https://img.shields.io/badge/AppVersion-1.9.3-informational?style=flat-square)

Ingress controller for Kubernetes using NGINX as a reverse proxy and load balancer

## Upstream References
- <https://github.com/kubernetes/ingress-nginx>

* <https://github.com/kubernetes/ingress-nginx>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Kubernetes: `>=1.20.0-0`

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install ingress-nginx chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| commonLabels | object | `{}` |  |
| controller.name | string | `"controller"` |  |
| controller.enableAnnotationValidations | bool | `false` |  |
| controller.image.chroot | bool | `false` |  |
| controller.image.registry | string | `"registry.k8s.io"` |  |
| controller.image.image | string | `"ingress-nginx/controller"` |  |
| controller.image.tag | string | `"v1.9.3"` |  |
| controller.image.digest | string | `"sha256:8fd21d59428507671ce0fb47f818b1d859c92d2ad07bb7c947268d433030ba98"` |  |
| controller.image.digestChroot | string | `"sha256:df4931fd6859fbf1a71e785f02a44b2f9a16f010ae852c442e9bb779cbefdc86"` |  |
| controller.image.pullPolicy | string | `"IfNotPresent"` |  |
| controller.image.runAsUser | int | `101` |  |
| controller.image.allowPrivilegeEscalation | bool | `true` |  |
| controller.existingPsp | string | `""` | Use an existing PSP instead of creating one |
| controller.containerName | string | `"controller"` | Configures the controller container name |
| controller.containerPort | object | `{"http":80,"https":443}` | Configures the ports that the nginx-controller listens on |
| controller.config | object | `{}` | Will add custom configuration options to Nginx https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/configmap/ |
| controller.configAnnotations | object | `{}` | Annotations to be added to the controller config configuration configmap. |
| controller.proxySetHeaders | object | `{}` | Will add custom headers before sending traffic to backends according to https://github.com/kubernetes/ingress-nginx/tree/main/docs/examples/customization/custom-headers |
| controller.addHeaders | object | `{}` | Will add custom headers before sending response traffic to the client according to: https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/configmap/#add-headers |
| controller.dnsConfig | object | `{}` | Optionally customize the pod dnsConfig. |
| controller.hostAliases | list | `[]` | Optionally customize the pod hostAliases. |
| controller.hostname | object | `{}` | Optionally customize the pod hostname. |
| controller.dnsPolicy | string | `"ClusterFirst"` | Optionally change this to ClusterFirstWithHostNet in case you have 'hostNetwork: true'. By default, while using host network, name resolution uses the host's DNS. If you wish nginx-controller to keep resolving names inside the k8s network, use ClusterFirstWithHostNet. |
| controller.reportNodeInternalIp | bool | `false` | Bare-metal considerations via the host network https://kubernetes.github.io/ingress-nginx/deploy/baremetal/#via-the-host-network Ingress status was blank because there is no Service exposing the Ingress-Nginx Controller in a configuration using the host network, the default --publish-service flag used in standard cloud setups does not apply |
| controller.watchIngressWithoutClass | bool | `false` | Process Ingress objects without ingressClass annotation/ingressClassName field Overrides value for --watch-ingress-without-class flag of the controller binary Defaults to false |
| controller.ingressClassByName | bool | `false` | Process IngressClass per name (additionally as per spec.controller). |
| controller.enableTopologyAwareRouting | bool | `false` | This configuration enables Topology Aware Routing feature, used together with service annotation service.kubernetes.io/topology-mode="auto" Defaults to false |
| controller.allowSnippetAnnotations | bool | `false` | This configuration defines if Ingress Controller should allow users to set their own *-snippet annotations, otherwise this is forbidden / dropped when users add those annotations. Global snippets in ConfigMap are still respected |
| controller.hostNetwork | bool | `false` | Required for use with CNI based kubernetes installations (such as ones set up by kubeadm), since CNI and hostport don't mix yet. Can be deprecated once https://github.com/kubernetes/kubernetes/issues/23920 is merged |
| controller.hostPort.enabled | bool | `false` | Enable 'hostPort' or not |
| controller.hostPort.ports.http | int | `80` | 'hostPort' http port |
| controller.hostPort.ports.https | int | `443` | 'hostPort' https port |
| controller.networkPolicy.enabled | bool | `false` | Enable 'networkPolicy' or not |
| controller.electionID | string | `""` | Election ID to use for status update, by default it uses the controller name combined with a suffix of 'leader' |
| controller.ingressClassResource.name | string | `"nginx"` | Name of the ingressClass |
| controller.ingressClassResource.enabled | bool | `true` | Is this ingressClass enabled or not |
| controller.ingressClassResource.default | bool | `false` | Is this the default ingressClass for the cluster |
| controller.ingressClassResource.controllerValue | string | `"k8s.io/ingress-nginx"` | Controller-value of the controller that is processing this ingressClass |
| controller.ingressClassResource.parameters | object | `{}` | Parameters is a link to a custom resource containing additional configuration for the controller. This is optional if the controller does not require extra parameters. |
| controller.ingressClass | string | `"nginx"` | For backwards compatibility with ingress.class annotation, use ingressClass. Algorithm is as follows, first ingressClassName is considered, if not present, controller looks for ingress.class annotation |
| controller.podLabels | object | `{}` | Labels to add to the pod container metadata |
| controller.podSecurityContext | object | `{}` | Security Context policies for controller pods |
| controller.sysctls | object | `{}` | See https://kubernetes.io/docs/tasks/administer-cluster/sysctl-cluster/ for notes on enabling and using sysctls |
| controller.publishService | object | `{"enabled":true,"pathOverride":""}` | Allows customization of the source of the IP address or FQDN to report in the ingress status field. By default, it reads the information provided by the service. If disable, the status field reports the IP address of the node or nodes where an ingress controller pod is running. |
| controller.publishService.enabled | bool | `true` | Enable 'publishService' or not |
| controller.publishService.pathOverride | string | `""` | Allows overriding of the publish service to bind to Must be <namespace>/<service_name> |
| controller.scope.enabled | bool | `false` | Enable 'scope' or not |
| controller.scope.namespace | string | `""` | Namespace to limit the controller to; defaults to $(POD_NAMESPACE) |
| controller.scope.namespaceSelector | string | `""` | When scope.enabled == false, instead of watching all namespaces, we watching namespaces whose labels only match with namespaceSelector. Format like foo=bar. Defaults to empty, means watching all namespaces. |
| controller.configMapNamespace | string | `""` | Allows customization of the configmap / nginx-configmap namespace; defaults to $(POD_NAMESPACE) |
| controller.tcp.configMapNamespace | string | `""` | Allows customization of the tcp-services-configmap; defaults to $(POD_NAMESPACE) |
| controller.tcp.annotations | object | `{}` | Annotations to be added to the tcp config configmap |
| controller.udp.configMapNamespace | string | `""` | Allows customization of the udp-services-configmap; defaults to $(POD_NAMESPACE) |
| controller.udp.annotations | object | `{}` | Annotations to be added to the udp config configmap |
| controller.maxmindLicenseKey | string | `""` | Maxmind license key to download GeoLite2 Databases. # https://blog.maxmind.com/2019/12/18/significant-changes-to-accessing-and-using-geolite2-databases |
| controller.extraArgs | object | `{}` | Additional command line arguments to pass to Ingress-Nginx Controller E.g. to specify the default SSL certificate you can use |
| controller.extraEnvs | list | `[]` | Additional environment variables to set |
| controller.kind | string | `"Deployment"` | Use a `DaemonSet` or `Deployment` |
| controller.annotations | object | `{}` | Annotations to be added to the controller Deployment or DaemonSet # |
| controller.labels | object | `{}` | Labels to be added to the controller Deployment or DaemonSet and other resources that do not have option to specify labels # |
| controller.updateStrategy | object | `{}` | The update strategy to apply to the Deployment or DaemonSet # |
| controller.minReadySeconds | int | `0` | `minReadySeconds` to avoid killing pods before we are ready # |
| controller.tolerations | list | `[]` | Node tolerations for server scheduling to nodes with taints # Ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/ # |
| controller.affinity | object | `{}` | Affinity and anti-affinity rules for server scheduling to nodes # Ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#affinity-and-anti-affinity # |
| controller.topologySpreadConstraints | list | `[]` | Topology spread constraints rely on node labels to identify the topology domain(s) that each Node is in. # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # |
| controller.terminationGracePeriodSeconds | int | `300` | `terminationGracePeriodSeconds` to avoid killing pods before we are ready # wait up to five minutes for the drain of connections # |
| controller.nodeSelector | object | `{"kubernetes.io/os":"linux"}` | Node labels for controller pod assignment # Ref: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/ # |
| controller.livenessProbe.httpGet.path | string | `"/healthz"` |  |
| controller.livenessProbe.httpGet.port | int | `10254` |  |
| controller.livenessProbe.httpGet.scheme | string | `"HTTP"` |  |
| controller.livenessProbe.initialDelaySeconds | int | `10` |  |
| controller.livenessProbe.periodSeconds | int | `10` |  |
| controller.livenessProbe.timeoutSeconds | int | `1` |  |
| controller.livenessProbe.successThreshold | int | `1` |  |
| controller.livenessProbe.failureThreshold | int | `5` |  |
| controller.readinessProbe.httpGet.path | string | `"/healthz"` |  |
| controller.readinessProbe.httpGet.port | int | `10254` |  |
| controller.readinessProbe.httpGet.scheme | string | `"HTTP"` |  |
| controller.readinessProbe.initialDelaySeconds | int | `10` |  |
| controller.readinessProbe.periodSeconds | int | `10` |  |
| controller.readinessProbe.timeoutSeconds | int | `1` |  |
| controller.readinessProbe.successThreshold | int | `1` |  |
| controller.readinessProbe.failureThreshold | int | `3` |  |
| controller.healthCheckPath | string | `"/healthz"` | Path of the health check endpoint. All requests received on the port defined by the healthz-port parameter are forwarded internally to this path. |
| controller.healthCheckHost | string | `""` | Address to bind the health check endpoint. It is better to set this option to the internal node address if the Ingress-Nginx Controller is running in the `hostNetwork: true` mode. |
| controller.podAnnotations | object | `{}` | Annotations to be added to controller pods # |
| controller.replicaCount | int | `1` |  |
| controller.minAvailable | int | `1` | Minimum available pods set in PodDisruptionBudget. Define either 'minAvailable' or 'maxUnavailable', never both. |
| controller.resources.requests.cpu | string | `"100m"` |  |
| controller.resources.requests.memory | string | `"90Mi"` |  |
| controller.autoscaling.enabled | bool | `false` |  |
| controller.autoscaling.annotations | object | `{}` |  |
| controller.autoscaling.minReplicas | int | `1` |  |
| controller.autoscaling.maxReplicas | int | `11` |  |
| controller.autoscaling.targetCPUUtilizationPercentage | int | `50` |  |
| controller.autoscaling.targetMemoryUtilizationPercentage | int | `50` |  |
| controller.autoscaling.behavior | object | `{}` |  |
| controller.autoscalingTemplate | list | `[]` |  |
| controller.keda.apiVersion | string | `"keda.sh/v1alpha1"` |  |
| controller.keda.enabled | bool | `false` |  |
| controller.keda.minReplicas | int | `1` |  |
| controller.keda.maxReplicas | int | `11` |  |
| controller.keda.pollingInterval | int | `30` |  |
| controller.keda.cooldownPeriod | int | `300` |  |
| controller.keda.restoreToOriginalReplicaCount | bool | `false` |  |
| controller.keda.scaledObject.annotations | object | `{}` |  |
| controller.keda.triggers | list | `[]` |  |
| controller.keda.behavior | object | `{}` |  |
| controller.enableMimalloc | bool | `true` | Enable mimalloc as a drop-in replacement for malloc. # ref: https://github.com/microsoft/mimalloc # |
| controller.customTemplate.configMapName | string | `""` |  |
| controller.customTemplate.configMapKey | string | `""` |  |
| controller.service.enabled | bool | `true` |  |
| controller.service.appProtocol | bool | `true` | If enabled is adding an appProtocol option for Kubernetes service. An appProtocol field replacing annotations that were using for setting a backend protocol. Here is an example for AWS: service.beta.kubernetes.io/aws-load-balancer-backend-protocol: http It allows choosing the protocol for each backend specified in the Kubernetes service. See the following GitHub issue for more details about the purpose: https://github.com/kubernetes/kubernetes/issues/40244 Will be ignored for Kubernetes versions older than 1.20 # |
| controller.service.annotations | object | `{}` | Annotations are mandatory for the load balancer to come up. Varies with the cloud service. Values passed through helm tpl engine. |
| controller.service.labels | object | `{}` |  |
| controller.service.externalIPs | list | `[]` | List of IP addresses at which the controller services are available # Ref: https://kubernetes.io/docs/concepts/services-networking/service/#external-ips # |
| controller.service.loadBalancerIP | string | `""` | Used by cloud providers to connect the resulting `LoadBalancer` to a pre-existing static IP according to https://kubernetes.io/docs/concepts/services-networking/service/#loadbalancer |
| controller.service.loadBalancerSourceRanges | list | `[]` |  |
| controller.service.loadBalancerClass | string | `""` | Used by cloud providers to select a load balancer implementation other than the cloud provider default. https://kubernetes.io/docs/concepts/services-networking/service/#load-balancer-class |
| controller.service.enableHttp | bool | `true` |  |
| controller.service.enableHttps | bool | `true` |  |
| controller.service.ipFamilyPolicy | string | `"SingleStack"` | Represents the dual-stack-ness requested or required by this Service. Possible values are SingleStack, PreferDualStack or RequireDualStack. The ipFamilies and clusterIPs fields depend on the value of this field. # Ref: https://kubernetes.io/docs/concepts/services-networking/dual-stack/ |
| controller.service.ipFamilies | list | `["IPv4"]` | List of IP families (e.g. IPv4, IPv6) assigned to the service. This field is usually assigned automatically based on cluster configuration and the ipFamilyPolicy field. # Ref: https://kubernetes.io/docs/concepts/services-networking/dual-stack/ |
| controller.service.ports.http | int | `80` |  |
| controller.service.ports.https | int | `443` |  |
| controller.service.targetPorts.http | string | `"http"` |  |
| controller.service.targetPorts.https | string | `"https"` |  |
| controller.service.type | string | `"LoadBalancer"` |  |
| controller.service.nodePorts.http | string | `""` |  |
| controller.service.nodePorts.https | string | `""` |  |
| controller.service.nodePorts.tcp | object | `{}` |  |
| controller.service.nodePorts.udp | object | `{}` |  |
| controller.service.external.enabled | bool | `true` |  |
| controller.service.internal.enabled | bool | `false` | Enables an additional internal load balancer (besides the external one). |
| controller.service.internal.annotations | object | `{}` | Annotations are mandatory for the load balancer to come up. Varies with the cloud service. Values passed through helm tpl engine. |
| controller.service.internal.loadBalancerIP | string | `""` | Used by cloud providers to connect the resulting internal LoadBalancer to a pre-existing static IP. Make sure to add to the service the needed annotation to specify the subnet which the static IP belongs to. For instance, `networking.gke.io/internal-load-balancer-subnet` for GCP and `service.beta.kubernetes.io/aws-load-balancer-subnets` for AWS. |
| controller.service.internal.loadBalancerSourceRanges | list | `[]` | Restrict access For LoadBalancer service. Defaults to 0.0.0.0/0. |
| controller.service.internal.ports | object | `{}` | Custom port mapping for internal service |
| controller.service.internal.targetPorts | object | `{}` | Custom target port mapping for internal service |
| controller.shareProcessNamespace | bool | `false` |  |
| controller.extraContainers | list | `[]` | Additional containers to be added to the controller pod. See https://github.com/lemonldap-ng-controller/lemonldap-ng-controller as example. |
| controller.extraVolumeMounts | list | `[]` | Additional volumeMounts to the controller main container. |
| controller.extraVolumes | list | `[]` | Additional volumes to the controller pod. |
| controller.extraInitContainers | list | `[]` | Containers, which are run before the app containers are started. |
| controller.extraModules | list | `[]` | Modules, which are mounted into the core nginx image. See values.yaml for a sample to add opentelemetry module |
| controller.opentelemetry.enabled | bool | `false` |  |
| controller.opentelemetry.image | string | `"registry.k8s.io/ingress-nginx/opentelemetry:v20230721-3e2062ee5@sha256:13bee3f5223883d3ca62fee7309ad02d22ec00ff0d7033e3e9aca7a9f60fd472"` |  |
| controller.opentelemetry.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| controller.opentelemetry.resources | object | `{}` |  |
| controller.admissionWebhooks.annotations | object | `{}` |  |
| controller.admissionWebhooks.enabled | bool | `true` |  |
| controller.admissionWebhooks.extraEnvs | list | `[]` | Additional environment variables to set |
| controller.admissionWebhooks.failurePolicy | string | `"Fail"` | Admission Webhook failure policy to use |
| controller.admissionWebhooks.port | int | `8443` |  |
| controller.admissionWebhooks.certificate | string | `"/usr/local/certificates/cert"` |  |
| controller.admissionWebhooks.key | string | `"/usr/local/certificates/key"` |  |
| controller.admissionWebhooks.namespaceSelector | object | `{}` |  |
| controller.admissionWebhooks.objectSelector | object | `{}` |  |
| controller.admissionWebhooks.labels | object | `{}` | Labels to be added to admission webhooks |
| controller.admissionWebhooks.existingPsp | string | `""` | Use an existing PSP instead of creating one |
| controller.admissionWebhooks.service.annotations | object | `{}` |  |
| controller.admissionWebhooks.service.externalIPs | list | `[]` |  |
| controller.admissionWebhooks.service.loadBalancerSourceRanges | list | `[]` |  |
| controller.admissionWebhooks.service.servicePort | int | `443` |  |
| controller.admissionWebhooks.service.type | string | `"ClusterIP"` |  |
| controller.admissionWebhooks.createSecretJob.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| controller.admissionWebhooks.createSecretJob.resources | object | `{}` |  |
| controller.admissionWebhooks.patchWebhookJob.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| controller.admissionWebhooks.patchWebhookJob.resources | object | `{}` |  |
| controller.admissionWebhooks.patch.enabled | bool | `true` |  |
| controller.admissionWebhooks.patch.image.registry | string | `"registry.k8s.io"` |  |
| controller.admissionWebhooks.patch.image.image | string | `"ingress-nginx/kube-webhook-certgen"` |  |
| controller.admissionWebhooks.patch.image.tag | string | `"v20231011-8b53cabe0"` |  |
| controller.admissionWebhooks.patch.image.digest | string | `"sha256:a7943503b45d552785aa3b5e457f169a5661fb94d82b8a3373bcd9ebaf9aac80"` |  |
| controller.admissionWebhooks.patch.image.pullPolicy | string | `"IfNotPresent"` |  |
| controller.admissionWebhooks.patch.priorityClassName | string | `""` | Provide a priority class name to the webhook patching job # |
| controller.admissionWebhooks.patch.podAnnotations | object | `{}` |  |
| controller.admissionWebhooks.patch.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| controller.admissionWebhooks.patch.tolerations | list | `[]` |  |
| controller.admissionWebhooks.patch.labels | object | `{}` | Labels to be added to patch job resources |
| controller.admissionWebhooks.patch.securityContext.runAsNonRoot | bool | `true` |  |
| controller.admissionWebhooks.patch.securityContext.runAsUser | int | `2000` |  |
| controller.admissionWebhooks.patch.securityContext.fsGroup | int | `2000` |  |
| controller.admissionWebhooks.certManager.enabled | bool | `false` |  |
| controller.admissionWebhooks.certManager.rootCert.duration | string | `""` |  |
| controller.admissionWebhooks.certManager.admissionCert.duration | string | `""` |  |
| controller.metrics.port | int | `10254` |  |
| controller.metrics.portName | string | `"metrics"` |  |
| controller.metrics.enabled | bool | `false` |  |
| controller.metrics.service.annotations | object | `{}` |  |
| controller.metrics.service.labels | object | `{}` | Labels to be added to the metrics service resource |
| controller.metrics.service.externalIPs | list | `[]` | List of IP addresses at which the stats-exporter service is available # Ref: https://kubernetes.io/docs/concepts/services-networking/service/#external-ips # |
| controller.metrics.service.loadBalancerSourceRanges | list | `[]` |  |
| controller.metrics.service.servicePort | int | `10254` |  |
| controller.metrics.service.type | string | `"ClusterIP"` |  |
| controller.metrics.serviceMonitor.enabled | bool | `false` |  |
| controller.metrics.serviceMonitor.additionalLabels | object | `{}` |  |
| controller.metrics.serviceMonitor.namespace | string | `""` |  |
| controller.metrics.serviceMonitor.namespaceSelector | object | `{}` |  |
| controller.metrics.serviceMonitor.scrapeInterval | string | `"30s"` |  |
| controller.metrics.serviceMonitor.targetLabels | list | `[]` |  |
| controller.metrics.serviceMonitor.relabelings | list | `[]` |  |
| controller.metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| controller.metrics.prometheusRule.enabled | bool | `false` |  |
| controller.metrics.prometheusRule.additionalLabels | object | `{}` |  |
| controller.metrics.prometheusRule.rules | list | `[]` |  |
| controller.lifecycle | object | `{"preStop":{"exec":{"command":["/wait-shutdown"]}}}` | Improve connection draining when ingress controller pod is deleted using a lifecycle hook: With this new hook, we increased the default terminationGracePeriodSeconds from 30 seconds to 300, allowing the draining of connections up to five minutes. If the active connections end before that, the pod will terminate gracefully at that time. To effectively take advantage of this feature, the Configmap feature worker-shutdown-timeout new value is 240s instead of 10s. # |
| controller.priorityClassName | string | `""` |  |
| revisionHistoryLimit | int | `10` | Rollback limit # |
| defaultBackend.enabled | bool | `false` |  |
| defaultBackend.name | string | `"defaultbackend"` |  |
| defaultBackend.image.registry | string | `"registry.k8s.io"` |  |
| defaultBackend.image.image | string | `"defaultbackend-amd64"` |  |
| defaultBackend.image.tag | string | `"1.5"` |  |
| defaultBackend.image.pullPolicy | string | `"IfNotPresent"` |  |
| defaultBackend.image.runAsUser | int | `65534` |  |
| defaultBackend.image.runAsNonRoot | bool | `true` |  |
| defaultBackend.image.readOnlyRootFilesystem | bool | `true` |  |
| defaultBackend.image.allowPrivilegeEscalation | bool | `false` |  |
| defaultBackend.existingPsp | string | `""` | Use an existing PSP instead of creating one |
| defaultBackend.extraArgs | object | `{}` |  |
| defaultBackend.serviceAccount.create | bool | `true` |  |
| defaultBackend.serviceAccount.name | string | `""` |  |
| defaultBackend.serviceAccount.automountServiceAccountToken | bool | `true` |  |
| defaultBackend.extraEnvs | list | `[]` | Additional environment variables to set for defaultBackend pods |
| defaultBackend.port | int | `8080` |  |
| defaultBackend.livenessProbe.failureThreshold | int | `3` |  |
| defaultBackend.livenessProbe.initialDelaySeconds | int | `30` |  |
| defaultBackend.livenessProbe.periodSeconds | int | `10` |  |
| defaultBackend.livenessProbe.successThreshold | int | `1` |  |
| defaultBackend.livenessProbe.timeoutSeconds | int | `5` |  |
| defaultBackend.readinessProbe.failureThreshold | int | `6` |  |
| defaultBackend.readinessProbe.initialDelaySeconds | int | `0` |  |
| defaultBackend.readinessProbe.periodSeconds | int | `5` |  |
| defaultBackend.readinessProbe.successThreshold | int | `1` |  |
| defaultBackend.readinessProbe.timeoutSeconds | int | `5` |  |
| defaultBackend.updateStrategy | object | `{}` | The update strategy to apply to the Deployment or DaemonSet # |
| defaultBackend.minReadySeconds | int | `0` | `minReadySeconds` to avoid killing pods before we are ready # |
| defaultBackend.tolerations | list | `[]` | Node tolerations for server scheduling to nodes with taints # Ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/ # |
| defaultBackend.affinity | object | `{}` |  |
| defaultBackend.podSecurityContext | object | `{}` | Security Context policies for controller pods See https://kubernetes.io/docs/tasks/administer-cluster/sysctl-cluster/ for notes on enabling and using sysctls # |
| defaultBackend.containerSecurityContext | object | `{}` | Security Context policies for controller main container. See https://kubernetes.io/docs/tasks/administer-cluster/sysctl-cluster/ for notes on enabling and using sysctls # |
| defaultBackend.podLabels | object | `{}` | Labels to add to the pod container metadata |
| defaultBackend.nodeSelector | object | `{"kubernetes.io/os":"linux"}` | Node labels for default backend pod assignment # Ref: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/ # |
| defaultBackend.podAnnotations | object | `{}` | Annotations to be added to default backend pods # |
| defaultBackend.replicaCount | int | `1` |  |
| defaultBackend.minAvailable | int | `1` |  |
| defaultBackend.resources | object | `{}` |  |
| defaultBackend.extraVolumeMounts | list | `[]` |  |
| defaultBackend.extraVolumes | list | `[]` |  |
| defaultBackend.autoscaling.annotations | object | `{}` |  |
| defaultBackend.autoscaling.enabled | bool | `false` |  |
| defaultBackend.autoscaling.minReplicas | int | `1` |  |
| defaultBackend.autoscaling.maxReplicas | int | `2` |  |
| defaultBackend.autoscaling.targetCPUUtilizationPercentage | int | `50` |  |
| defaultBackend.autoscaling.targetMemoryUtilizationPercentage | int | `50` |  |
| defaultBackend.networkPolicy.enabled | bool | `false` | Enable 'networkPolicy' or not |
| defaultBackend.service.annotations | object | `{}` |  |
| defaultBackend.service.externalIPs | list | `[]` | List of IP addresses at which the default backend service is available # Ref: https://kubernetes.io/docs/concepts/services-networking/service/#external-ips # |
| defaultBackend.service.loadBalancerSourceRanges | list | `[]` |  |
| defaultBackend.service.servicePort | int | `80` |  |
| defaultBackend.service.type | string | `"ClusterIP"` |  |
| defaultBackend.priorityClassName | string | `""` |  |
| defaultBackend.labels | object | `{}` | Labels to be added to the default backend resources |
| rbac.create | bool | `true` |  |
| rbac.scope | bool | `false` |  |
| podSecurityPolicy.enabled | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| serviceAccount.automountServiceAccountToken | bool | `true` |  |
| serviceAccount.annotations | object | `{}` | Annotations for the controller service account |
| imagePullSecrets | list | `[]` | Optional array of imagePullSecrets containing private registry credentials # Ref: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/ |
| tcp | object | `{}` | TCP service key-value pairs # Ref: https://github.com/kubernetes/ingress-nginx/blob/main/docs/user-guide/exposing-tcp-udp-services.md # |
| udp | object | `{}` | UDP service key-value pairs # Ref: https://github.com/kubernetes/ingress-nginx/blob/main/docs/user-guide/exposing-tcp-udp-services.md # |
| portNamePrefix | string | `""` | Prefix for TCP and UDP ports names in ingress controller service # Some cloud providers, like Yandex Cloud may have a requirements for a port name regex to support cloud load balancer integration |
| dhParam | string | `""` | A base64-encoded Diffie-Hellman parameter. This can be generated with: `openssl dhparam 4096 2> /dev/null | base64` # Ref: https://github.com/kubernetes/ingress-nginx/tree/main/docs/examples/customization/ssl-dh-param |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# minio

![Version: 5.2.0](https://img.shields.io/badge/Version-5.2.0-informational?style=flat-square) ![AppVersion: RELEASE.2024-04-18T19-09-19Z](https://img.shields.io/badge/AppVersion-RELEASE.2024--04--18T19--09--19Z-informational?style=flat-square)

High Performance Object Storage

## Upstream References
- <https://min.io>

* <https://github.com/minio/minio>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# common

![Version: 2.2.4](https://img.shields.io/badge/Version-2.2.4-informational?style=flat-square) ![Type: library](https://img.shields.io/badge/Type-library-informational?style=flat-square) ![AppVersion: 2.2.4](https://img.shields.io/badge/AppVersion-2.2.4-informational?style=flat-square)

A Library Helm Chart for grouping common logic between bitnami charts. This chart is not deployable by itself.

## Upstream References
- <https://github.com/bitnami/charts/tree/main/bitnami/common>

* <https://github.com/bitnami/charts>
* <https://www.bitnami.com/>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install common chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| exampleValue | string | `"common-chart"` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# pas-plugin-worker

![Version: 1.8.10](https://img.shields.io/badge/Version-1.8.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.8.10](https://img.shields.io/badge/AppVersion-1.8.10-informational?style=flat-square)

SD Elements PAS Plugin Worker Service

## Upstream References
- <https://docker.sdelements.com>

* <https://agra.sdelements.com/sd-elements/management_command_system>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# tenant

![Version: 5.0.12](https://img.shields.io/badge/Version-5.0.12-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v5.0.12](https://img.shields.io/badge/AppVersion-v5.0.12-informational?style=flat-square)

A Helm chart for MinIO Operator

## Upstream References
- <https://min.io>

* <https://github.com/minio/operator>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-datastore

![Version: 1.0.11](https://img.shields.io/badge/Version-1.0.11-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.11](https://img.shields.io/badge/AppVersion-1.0.11-informational?style=flat-square)

The Security Compass datastore (Redis)

## Upstream References

* <https://agra.sdelements.com/deployment/containers/datastore>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-library

![Version: 1.1.4](https://img.shields.io/badge/Version-1.1.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

A Library Project

## Upstream References
- <https://agra.sdelements.com/deployment/containers/library>

* <https://agra.sdelements.com/deployment/containers/library>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-database

![Version: 1.3.6](https://img.shields.io/badge/Version-1.3.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.3.6](https://img.shields.io/badge/AppVersion-1.3.6-informational?style=flat-square)

The Security Compass Database chart

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# minio

![Version: 5.0.7](https://img.shields.io/badge/Version-5.0.7-informational?style=flat-square) ![AppVersion: RELEASE.2023-02-10T18-48-39Z](https://img.shields.io/badge/AppVersion-RELEASE.2023--02--10T18--48--39Z-informational?style=flat-square)

Multi-Cloud Object Storage

## Upstream References
- <https://min.io>

* <https://github.com/minio/minio>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# sc-datastore

![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.2](https://img.shields.io/badge/AppVersion-1.0.2-informational?style=flat-square)

The Security Compass datastore (Redis)

## Upstream References

* <https://agra.sdelements.com/deployment/containers/datastore>

## Upstream Release Notes

<!-- Warning: Do not manually edit this file. See notes on gluon + helm-docs at the end of this file for more information. -->
# common

![Version: 2.14.1](https://img.shields.io/badge/Version-2.14.1-informational?style=flat-square) ![Type: library](https://img.shields.io/badge/Type-library-informational?style=flat-square) ![AppVersion: 2.14.1](https://img.shields.io/badge/AppVersion-2.14.1-informational?style=flat-square)

A Library Helm Chart for grouping common logic between bitnami charts. This chart is not deployable by itself.

## Upstream References
- <https://bitnami.com>

* <https://github.com/bitnami/charts>

## Upstream Release Notes

This package has no upstream release note links on file. Please add some to [chart/Chart.yaml](chart/Chart.yaml) under `annotations.bigbang.dev/upstreamReleaseNotesMarkdown`.
Example:
```yaml
annotations:
  bigbang.dev/upstreamReleaseNotesMarkdown: |
    - [Find our upstream chart's CHANGELOG here](https://link-goes-here/CHANGELOG.md)
    - [and our upstream application release notes here](https://another-link-here/RELEASE_NOTES.md)
```

## Learn More

- [Application Overview](docs/overview.md)
- [Other Documentation](docs/)

## Pre-Requisites

- Kubernetes Cluster deployed
- Kubernetes config installed in `~/.kube/config`
- Helm installed

Install Helm

https://helm.sh/docs/intro/install/

## Deployment

- Clone down the repository
- cd into directory

```bash
helm install common chart/
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| exampleValue | string | `"common-chart"` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.

---

_This file is programatically generated using `helm-docs` and some BigBang-specific templates. The `gluon` repository has [instructions for regenerating package READMEs](https://repo1.dso.mil/big-bang/product/packages/gluon/-/blob/master/docs/bb-package-readme.md)._

