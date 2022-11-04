# SD Elements

![Version: 2022.2.71-bb.1](https://img.shields.io/badge/Version-2022.2.71--bb.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2022.2.71](https://img.shields.io/badge/AppVersion-2022.2.71-informational?style=flat-square)

SDElements by Security Compass Ltd.

## Learn More
* [User Guide](https://docs.sdelements.com/release/2022.2/guide/)
* [Container Sysadmin Documentation](https://docs.sdelements.com/release/2022.2/sysadmin/docs/container/)

## Pre-Requisites

* _NEW in 2022.2_: A pre-existing S3 API compatible bucket (AWS S3, minio, etc) with Access Key and Secret Key credentials populated under `global.SharedStorage`
* Kubernetes v1.18 or newer deployed
* Kubernetes config installed in `~/.kube/config`
* Helm 3.2, or an alternative method of parsing and deploying a helm v3 chart
* An ingress controller or load balancer that allows external clients to reach the SD Elements web deployment
* Name resolution both within the Kubernetes cluster and for endpoints outside of it
* Access to IronBank for pulling our images

## BigBang Modifications

- Bigbang Additions
  - Istio resources
    - `virtualservice`
    - `destinationRule`
  - NetworkPolicies
  - EFS volumes (no longer required as of 2022.2 release, if `global.rwx.enabled=false`)

## Installation

**NOTE** As of SD Elements 5.16, we no longer autogenerate secrets. These should be manually defined by you in a custom overlay.

For reference, we've included a [sample overlay](example.values.yaml)

To install from a cloned copy of this repo:
```bash
# create the namespace
export namespace="sdelements"
kubectl create namespace "${namespace}"

# duplicate the example values overlay
cp example.values.yaml custom.values.yaml
# edit example values to suit your requirements
vi custom.values.yaml

# switch to the chart folder and install sde into your namespace
cd chart
helm install sdelements . --values ../custom.values.yaml --namespace "${namespace}"

# validate install
helm list -n "${namespace}"
```

## Upgrading

Please see our [Upgrade Documentation](https://docs.sdelements.com/release/2022.2/sysadmin/docs/container/upgrade.html)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| valuesVersion | float | `2` |  |
| sde.superuserEmail | string | `"sde-superuser@sdelements.com"` |  |
| sde.defaultFromEmail | string | `"SDElements <noreply@sdelements.com>"` |  |
| sde.defaultOrg | string | `"default"` |  |
| sde.feedbackEmail | string | `"support@sdelements.com"` |  |
| sde.supportEmail | string | `"support@sdelements.com"` |  |
| sde.fqdn | string | `"example.com"` |  |
| sde.enableJITT | bool | `false` |  |
| sde.gainsight.enabled | bool | `false` |  |
| ingress-nginx.enabled | bool | `false` |  |
| ingress-nginx.rbac.scope | bool | `true` |  |
| ingress-nginx.controller.admissionWebhooks.enabled | bool | `false` |  |
| ingress-nginx.controller.scope.enabled | bool | `true` |  |
| ingress-nginx.controller.config.forwarded-for-header | string | `"proxy_protocol"` |  |
| ingress-nginx.controller.config.use-forwarded-headers | string | `"true"` |  |
| ingress-nginx.controller.metrics.enabled | string | `"true"` |  |
| ingress-nginx.controller.service.type | string | `"LoadBalancer"` |  |
| ingress-nginx.controller.service.externalTrafficPolicy | string | `"Local"` |  |
| ingress-nginx.controller.service.targetPorts.http | string | `"http"` |  |
| ingress-nginx.controller.service.targetPorts.https | string | `"https"` |  |
| ingress-nginx.controller.service.annotations."service.beta.kubernetes.io/aws-load-balancer-type" | string | `"nlb"` |  |
| ingress-nginx.controller.service.annotations."service.beta.kubernetes.io/aws-load-balancer-ssl-ports" | string | `"https"` |  |
| ingress-nginx.controller.service.annotations."service.beta.kubernetes.io/aws-load-balancer-connection-idle-timeout" | string | `"3600"` |  |
| ingress-nginx.controller.extraArgs.enable-ssl-passthrough | bool | `true` |  |
| ingress-nginx.revisionHistoryLimit | int | `0` |  |
| global.imageRegistry | string | `"docker.sdelements.com"` |  |
| global.registrySecretName | string | `"security-compass-secret"` |  |
| global.imageRegistryFormat | string | `"%s/%s-%s-%s:%s"` |  |
| global.imageOrganization | string | `"default_organization"` |  |
| global.imagePullPolicy | string | `"IfNotPresent"` |  |
| global.nginxIngress.enabled | bool | `true` |  |
| global.enableInternalTls | bool | `false` |  |
| global.certManager.enabled | bool | `false` |  |
| global.certManager.email | string | `"sysadmin@example.com"` |  |
| global.certManager.defaultIssuer | string | `"self-signed"` |  |
| global.certManager.issuers[0].name | string | `"self-signed"` |  |
| global.certManager.issuers[0].type | string | `"self-signed"` |  |
| global.broker | object | `{}` |  |
| global.sharedStorage | object | `{}` |  |
| global.pas.enabled | bool | `false` |  |
| global.pas.enableCustomPlugins | bool | `true` |  |
| global.pas.sharedStorage.secretName | string | `"sde-secrets"` |  |
| web.replicas | int | `1` |  |
| web.readinessProbe.enabled | bool | `true` |  |
| sc-jitt.replicas | int | `1` |  |
| sc-broker.replicas | int | `1` |  |
| sc-broker.resources.requests.memory | string | `"128Mi"` |  |
| sc-database.replicas | int | `1` |  |
| sc-database.commands | object | `{}` |  |
| sc-database.resources.requests.cpu | string | `"500m"` |  |
| sc-database.resources.requests.memory | string | `"512Mi"` |  |
| sc-database.resources.limits.cpu | int | `6` |  |
| sc-mail.replicas | int | `1` |  |
| sc-mail.config.mailFrom | string | `"noreply@sdelements.com"` |  |
| worker.synchronous.lowPriority.map | string | `"  ~Token"` |  |
| worker.synchronous.lowPriority.replicas | int | `1` |  |
| worker.synchronous.lowPriority.niceness | int | `17` |  |
| worker.synchronous.lowPriority.startupScript | string | `"/bin/run_wsgi.sh"` |  |
| worker.synchronous.lowPriority.resources.requests.cpu | string | `"250m"` |  |
| worker.synchronous.lowPriority.resources.requests.memory | string | `"512Mi"` |  |
| worker.synchronous.lowPriority.resources.limits.cpu | int | `4` |  |
| worker.synchronous.highPriority.default | bool | `true` |  |
| worker.synchronous.highPriority.map | string | `"  ~*sde-sessionid"` |  |
| worker.synchronous.highPriority.replicas | int | `1` |  |
| worker.synchronous.highPriority.niceness | int | `10` |  |
| worker.synchronous.highPriority.startupScript | string | `"/bin/run_wsgi.sh"` |  |
| worker.synchronous.highPriority.resources.requests.cpu | string | `"250m"` |  |
| worker.synchronous.highPriority.resources.requests.memory | string | `"1024Mi"` |  |
| worker.synchronous.highPriority.resources.limits.cpu | int | `4` |  |
| worker.asynchronous.lowPriority.replicas | int | `1` |  |
| worker.asynchronous.lowPriority.queueVarName | string | `"CELERY_LOW_PRIORITY_QUEUE_NAME"` |  |
| worker.asynchronous.lowPriority.queueVarVal | string | `"sde-low"` |  |
| worker.asynchronous.lowPriority.maxTasks | int | `1` |  |
| worker.asynchronous.lowPriority.niceness | int | `18` |  |
| worker.asynchronous.lowPriority.startupScript | string | `"/bin/run_celery.sh"` |  |
| worker.asynchronous.lowPriority.resources.requests.cpu | string | `"250m"` |  |
| worker.asynchronous.lowPriority.resources.requests.memory | string | `"256Mi"` |  |
| worker.asynchronous.lowPriority.resources.limits.cpu | int | `2` |  |
| worker.asynchronous.mediumPriority.replicas | int | `1` |  |
| worker.asynchronous.mediumPriority.queueVarName | string | `"CELERY_TASK_DEFAULT_QUEUE"` |  |
| worker.asynchronous.mediumPriority.queueVarVal | string | `"sde-medium"` |  |
| worker.asynchronous.mediumPriority.maxTasks | int | `1` |  |
| worker.asynchronous.mediumPriority.niceness | int | `15` |  |
| worker.asynchronous.mediumPriority.startupScript | string | `"/bin/run_celery.sh"` |  |
| worker.asynchronous.mediumPriority.resources.requests.cpu | string | `"250m"` |  |
| worker.asynchronous.mediumPriority.resources.requests.memory | string | `"256Mi"` |  |
| worker.asynchronous.mediumPriority.resources.limits.cpu | int | `2` |  |
| reporting.replicas | int | `1` |  |
| reporting.resources.requests.memory | string | `"128Mi"` |  |
| datastore.replicas | int | `1` |  |
| job.resources.requests.cpu | string | `"500m"` |  |
| job.resources.requests.memory | string | `"512Mi"` |  |
| job.specifications.alm-hourly.schedule | string | `"7 * * * *"` |  |
| job.specifications.alm-hourly.niceness | int | `19` |  |
| job.specifications.alm-hourly.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.alm-hourly.args[0] | string | `"almsync"` |  |
| job.specifications.alm-hourly.args[1] | string | `"hourly"` |  |
| job.specifications.alm-daily.schedule | string | `"26 1 * * *"` |  |
| job.specifications.alm-daily.niceness | int | `19` |  |
| job.specifications.alm-daily.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.alm-daily.args[0] | string | `"almsync"` |  |
| job.specifications.alm-daily.args[1] | string | `"daily"` |  |
| job.specifications.alm-weekly.schedule | string | `"33 4 * * 6"` |  |
| job.specifications.alm-weekly.niceness | int | `19` |  |
| job.specifications.alm-weekly.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.alm-weekly.args[0] | string | `"almsync"` |  |
| job.specifications.alm-weekly.args[1] | string | `"weekly"` |  |
| job.specifications.alm-monthly.schedule | string | `"26 4 1 * *"` |  |
| job.specifications.alm-monthly.niceness | int | `19` |  |
| job.specifications.alm-monthly.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.alm-monthly.args[0] | string | `"almsync"` |  |
| job.specifications.alm-monthly.args[1] | string | `"monthly"` |  |
| job.specifications.database-backup.schedule | string | `"*/20 * * * *"` |  |
| job.specifications.database-backup.niceness | int | `19` |  |
| job.specifications.database-backup.command[0] | string | `"/bin/sh"` |  |
| job.specifications.database-backup.args[0] | string | `"-c"` |  |
| job.specifications.database-backup.args[1] | string | `"/bin/sde.sh backup && /bin/sde.sh delete_backups 14"` |  |
| job.specifications.clear-expired-sessions.schedule | string | `"33 1 * * *"` |  |
| job.specifications.clear-expired-sessions.niceness | int | `19` |  |
| job.specifications.clear-expired-sessions.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.clear-expired-sessions.args[0] | string | `"clearsessions"` |  |
| job.specifications.refresh-task-relevance.schedule | string | `"26 3 * * *"` |  |
| job.specifications.refresh-task-relevance.niceness | int | `19` |  |
| job.specifications.refresh-task-relevance.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.refresh-task-relevance.args[0] | string | `"refresh-task-relevance"` |  |
| job.specifications.send-new-relevant-task-notifications.schedule | string | `"33 3 * * *"` |  |
| job.specifications.send-new-relevant-task-notifications.niceness | int | `19` |  |
| job.specifications.send-new-relevant-task-notifications.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.send-new-relevant-task-notifications.args[0] | string | `"send-new-relevant-task-notifications"` |  |
| job.specifications.time-since.schedule | string | `"33 2 * * *"` |  |
| job.specifications.time-since.niceness | int | `19` |  |
| job.specifications.time-since.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.time-since.args[0] | string | `"time-since"` |  |
| job.specifications.metrics.schedule | string | `"26 0 * * *"` |  |
| job.specifications.metrics.niceness | int | `19` |  |
| job.specifications.metrics.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.metrics.args[0] | string | `"metrics"` |  |
| job.specifications.cancel-external-sync-jobs.schedule | string | `"53 * * * *"` |  |
| job.specifications.cancel-external-sync-jobs.niceness | int | `19` |  |
| job.specifications.cancel-external-sync-jobs.command[0] | string | `"/bin/sde.sh"` |  |
| job.specifications.cancel-external-sync-jobs.args[0] | string | `"cancel-external-sync-jobs"` |  |
| job.specifications.cancel-external-sync-jobs.args[1] | string | `"all"` |  |
| job.specifications.cancel-external-sync-jobs.args[2] | string | `"--force"` |  |
| limitrange.enabled | bool | `true` |  |
| limitrange.container.defaultRequest.cpu | string | `"50m"` |  |
| limitrange.container.defaultRequest.memory | string | `"64Mi"` |  |
| limitrange.container.default.cpu | int | `2` |  |
| limitrange.container.default.memory | string | `"8192Mi"` |  |
| pas.pas-api.sdeAPIServiceName | string | `"worker-17-service"` |  |
| pas.pas-api.sdeAPIServicePort | int | `8080` |  |
| pas.pas-api.sdeQueueName | string | `"sde-medium"` |  |
| pas.pas-api.useLocalDevDbConfig | bool | `false` |  |
| pas.pas-api.admin.database.secretName | string | `"sde-secrets"` |  |
| pas.pas-api.admin.database.passwordSecretKey | string | `"SDE_DATABASE_PASSWORD"` |  |
| pas.pas-async-worker.useLocalDevDbConfig | bool | `false` |  |
| pas.pas-frontend | object | `{}` |  |
| minio.image.repository | string | `"docker.sdelements.com/default_organization-sde-minio"` |  |
| minio.mcImage.repository | string | `"docker.sdelements.com/default_organization-sde-mc"` |  |
| minio.enabled | bool | `false` |  |
| minio.mode | string | `"standalone"` |  |
| minio.rootUser | string | `"admin"` |  |
| minio.rootPassword | string | `"YOUR_MINIO_ADMIN_PASSWORD"` |  |
| minio.environment.MINIO_BROWSER | string | `"off"` |  |
| minio.persistence.size | string | `"10Gi"` |  |
| minio.resources.requests.memory | string | `"256Mi"` |  |
| minio.tlsCreateSelfSigned | bool | `false` |  |
| minio.tls.enabled | bool | `false` |  |
| minio.tls.certSecret | string | `"sde-minio-server-tls-secrets"` |  |
| minio.tls.publicCrt | string | `"tls.crt"` |  |
| minio.tls.privateKey | string | `"tls.key"` |  |
| minio.users[0].accessKey | string | `"backup"` |  |
| minio.users[0].secretKey | string | `"YOUR_BACKUP_USER_PASSWORD"` |  |
| minio.users[0].policy | string | `"readwrite"` |  |
| minio.buckets[0].name | string | `"backup"` |  |
| minio.buckets[0].policy | string | `"none"` |  |
| minio.buckets[0].purge | bool | `false` |  |
| minio.serviceAccount.create | bool | `true` |  |
| minio.serviceAccount.name | string | `"minio-sa"` |  |

## Contributing

Please see the [contributing guide](./CONTRIBUTING.md) if you are interested in contributing.
