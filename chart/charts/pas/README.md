# PAS Helm Chart
Helm chart for all PAS services

## Setup
Configure a `dev-values.yaml` file with the following values:

```
secretName: secret123

global:
  imageRegistryUsername: <SDELEMENTS.COM FREEIPA USERNAME>
  imageRegistryPassword: <SDELEMENTS.COM FREEIPA PASSWORD>
  imageRegistry: docker-dev.sdelements.com
  imageRegistryFormat: "%s/%s_%s/%s:%s"
  imageOrganization: dev

  pas:
    broker:
      password: password123
    database:
      password: password123

pas-api:
  sdeAPIServiceName: mock-sde-service
  sdeAPIServicePort: 5000
  # Enable service subcharts and claims
  useBrokerSubchart: true
  useDatabaseSubchart: true
  includeSDESecret: true

  sc-database:
    clientPassword: password123

  sc-broker:
    clientPassword: password123

# Use mock SDE chart
useMockSDE: true
# Include ingress for standalone deployments
includeIngress: true
```

Apply any other customizations to this file. View `values.yaml` for examples of possible values this service could use.

### Testing local chart changes
To test against local chart changes, in `Chart.yaml`, modify the repository value for that particular chart to a file path value to the local chart directory:
e.g. 
```
  - name: pas-api
    version: 1.1.7 # Needs to match the chart version
    repository: file://../pas_api
```

## Usage
To install the chart, you can use the helper script `run_dev_helm.sh`. It will download/update the subcharts and install or upgrade the chart.
The default configuration is for a standalone deployment.

The instance will be accessible at `http://localhost/pas/`

### Integration with SDE chart
To use with the main SDE chart, you need to set the correct values for the sde API service

E.g.
```
pas:
  pas-api:
    sdeAPIServiceName: worker-10-service
    sdeAPIServicePort: 8080
```

## Uninstalling the chart
Use `helm uninstall pas` to uninstall the chart.

