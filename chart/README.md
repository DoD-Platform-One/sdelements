 SDE

SD Elements (SDE) is a developer-centric threat modelling and security compliance platform

## Prerequisites
* SDE Service Account (see [Systems Admin Guide](https://docs.sdelements.com/release/latest/sysadmin/docs/container/account.html) for more details)
* Desired SDE Version
* Kubernetes 1.18+
* Latest Helm v3
* Object storage with S3 compatible API (e.g. AWS S3, MinIO)
* Storage class is configured (e.g. `gp3 (default)`)

## Get Repo Info

```bash
$ helm repo add sdelements "https://repository.securitycompass.com/artifactory/sde-helm-prod" \
    --username sc_username \
    --password sc_password
$ helm repo update
```

## Install Chart

Create a custom values file (e.g. `values.custom.yaml`), replacing values `mysecret` with a secure secret. We recommend using at least 16 characters for the secret, with a mix of upper/lower case with symbols. Replace the `sharedStorage` details with the prerequisite object storage details.
```yaml
global:
  imageRegistryUsername: sc_acme
  imageRegistryPassword: 1951aaf2420611ea893817e7c2c2288c
  storageClass: mystorageclass  # Required if default storage class is not configured
  sharedStorage:
    bucketName: bucket_name
    s3Url: https://s3_url
    s3AccessKey: access_key
    s3SecretKey: secret_key
sde:
  jwtSecret: mysecret
  secretKey: mysecret
  superuserPassword: mysecret
postgresql:
  auth:
    password: mysecret
sc-datastore:
  clientPassword: mysecret
rabbitmq:
  auth:
    password: mysecret
```

> **IMPORTANT** Manage these secrets like any software that requires version control

The command below installs SDE in the default configuration.
```bash
$ helm install [RELEASE_NAME] sdelements/sde -f values.custom.yaml
```

See [Common Customizations](#common-customizations) below

See [Advanced Helm Configuration](https://docs.sdelements.com/release/latest/sysadmin/docs/container/configuration.html) for additional configuration.

## Uninstall the Chart

```bash
$ helm uninstall [RELEASE_NAME]
```

This removes all Kubernetes components associated with the chart and deletes the release.

## Upgrading the chart

```bash
$ helm upgrade [RELEASE_NAME] sdelements/sde --install -f values.custom.yaml
```

## Common Customizations
| Key | Type | Default                                      | Description |
|-----|------|----------------------------------------------|-------------|
| sde.superuserEmail | string | "sde-superuser@sdelements.com"               | The SDE Superuser Login Email |
| sde.defaultFromEmail | string | "SDElements \<noreply@securitycompass.com\>" | |
| sde.fqdn | string | "example.com"                                | SDE Server FQDN |
| sde.enableJITT | bool | `false`                                      | Set to `true` to enable Just In Time Training |
| global.imagePullPolicy | string | "IfNotPresent"                               | |
| global.networkIsolation | string | "none"                                       | Isolate network access to SDE pods. Valid values "none", "namespace", "ingress", "full" |