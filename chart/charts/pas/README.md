# PAS Helm Chart

Helm chart for all PAS services, as an optional sub-chart to be in use with SDE. Follow [this document](https://securitycompass.atlassian.net/wiki/spaces/DEP/pages/2522710042), to learn more about how it is deployed with SDE.

## Getting started

Install the following items to get started:
- [Microk8s](https://microk8s.io/)
- [helm](https://helm.sh/)
- [k9s](https://k9scli.io/)

We can review [this document](https://securitycompass.atlassian.net/wiki/spaces/DEP/pages/2394587280/Set+up+SDE+on+Ubuntu+virtual+machine+microk8s+cluster) to help get started on that. Just follow steps 2 to 4.

## Setup
Configure a `dev-values.yaml` file with the following values:

```yaml
global:
  imageRegistryUsername: <SDELEMENTS.COM FREEIPA USERNAME>
  imageRegistryPassword: <SDELEMENTS.COM FREEIPA PASSWORD>
  imageRegistry: sdelements.jfrog.io
  imageRegistryFormat: "%s/sde-docker-%s/%s/%s:%s"
  imageOrganization: dev
  rwx:
    enabled: false

  pas:
    broker:
      password: password123
    database:
      password: password123
    datastore:
      clientPassword: password123
    sharedStorage:
      s3AccessKey: accessKey123
      s3SecretKey: secretKey123
      verifyCerts: "false"
      bucketName: plugin

pas-api:
  sdeAPIServiceName: mock-sde-service
  sdeAPIServicePort: 5000
  # Enable service subcharts and claims
  useBrokerSubchart: true
  useDatabaseSubchart: true
  useDatastoreSubchart: true
  includeSDESecret: true

  sc-database:
    clientPassword: password123

  sc-broker:
    clientPassword: password123

  sc-datastore:
    clientPassword: password123

  minio:
    enabled: true
    rootUser: admin
    rootPassword: password
    environment:
      MINIO_CERT_PASSWD: "password"
    tls:
      enabled: true
      certSecret: "pas-minio-ssl-secret"
      publicCrt: rootCA.crt
      privateKey: rootCA.key
    users:
    - accessKey: accessKey123
      secretKey: secretKey123
      policy: readwrite


# Use mock SDE chart
useMockSDE: true
# Include ingress for standalone deployments
includeIngress: true
```

Apply any other customizations to this file. View `values.yaml` for examples of possible values this service could use.

### Authenticating with helm repository

```
helm repo add sde-helm-dev https://sdelements.jfrog.io/artifactory/sde-helm-dev --username ${SDELEMENTS_FREEIPA_USER} --password ${SDELEMENTS_FREEIPA_PASSWORD}
helm repo update
```

### Testing local chart changes
To test against local chart changes, in this particular `Chart.yaml`, modify the repository value for that particular chart to a file path value to the local chart directory:
e.g.
```yaml
  - name: pas-api
    version: 1.1.7 # Needs to match the chart version
    repository: file://../pas_api
```

As those individual service charts are local, we would also need to download their subcharts as appropriate. Navigate to the proper service chart (using the above example, we can go to `../pas_api`) and run the following command: `helm dependency update`. This should download all of the dependency charts.

### Using local instances of Docker images

If you want to use your own local docker images, the easiest approach will be to build your containers locally and push them to your microk8s cluster.

There's a script `../build_for_local_k8s.sh` in this folder that we can run that can do that, via `bash build_for_local_k8s.sh <myTag>`, it should be run from either: the chart folder, `helm` folder or root of the project. This will build all of the necessary docker containers for us and push them to the local microk8s cluster on your workstation. If you already have an image built, you can run `bash microk8s_upload_image.sh <dockerImage>:<tag>`

After it is pushed, we can tell our Helm chart to use the appropriate image of the specified tag. In your `dev-values.yaml` file, we can specify the tags to be used for each service. We would need to declare the service name, and the tag, like so:

```yaml
pas-async-worker:
  imageTag: local

pas-api:
  initImageTag: local
  imageTag: local
```

After those changes are made, we can just run the helm deployment again.

## Usage
To install the chart, you can use the helper script `run_dev_helm.sh`. It will download/update the subcharts and install or upgrade the chart.
The default configuration is for a standalone deployment.

The instance will be accessible at `http://localhost/pas/`

### Integration with SDE chart
To use with the main SDE chart, you need to set the correct values for the sde API service

E.g.
```yaml
pas:
  pas-api:
    sdeAPIServiceName: worker-10-service
    sdeAPIServicePort: 8080
```

## Uninstalling the chart
Use `helm uninstall pas` to uninstall the chart.

## Helpful commands

Here are a list of helpful commands that would be good to know:

### microk8s
- `microk8s ctr images list`: List all known images in your local microk8s. Good to know what tags are availble for you
- `microk8s.dashboard-proxy`: Runs a dashboard proxy to help debug and know the state of things

### kubectl
- `kubectl get pod`: Get all of the pods running
- `kubectl describe pods`: Provide information about the pods
- `kubectl get pod <podName> -o json`: Get information about the pod in JSON format. Can also be returned in other formats, like `yaml`
- `kubectl logs <podName>`: Get logs for the specified pod
- `kubectl logs <podName> -c <containerName>`: Get logs for the container in the pod. Useful for init containers, like `pas-pas-app-init`
- `kubectl exec -ti <podName> -- /bin/bash`: "SSH" and run bash
- `kubectl delete <podName>`: Remvoes the specified pod. K8s should see it's deleted and add it back in. Good for forcing a restart.

### helm
- `helm template . -f values.yaml -f dev-values.yaml`: Generates the state of the deployment from the templates and specified files. Good for knowing what the state would look like
- `helm lint <chart_folder>`: Lints the entire chart, good for checking correctness
