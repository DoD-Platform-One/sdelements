# PAS API Helm Chart
Helm chart for PAS Plugin Service

## Setup
Configure a `dev-values.yaml` file with the following values:

```yaml
global:
  imageRegistryUsername: <SDELEMENTS.COM FREEIPA USERNAME>
  imageRegistryPassword: <SDELEMENTS.COM FREEIPA PASSWORD>
  imageRegistry: sdelements.jfrog.io
  imageRegistryFormat: "%s/sde-docker-%s/%s/%s:%s"
  imageOrganization: dev

sc-broker:
  clientPassword: password123
```

Apply any other customizations to this file. View `values.yaml` for examples of possible values this service could use.

## Usage
To install the chart, you can use the helper script `run_dev_helm.sh`. It will download/update the subcharts and install or upgrade the chart.
