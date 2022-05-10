## Kubernetes Setup
# Standalone Deployment
The application can be configured through the `values.yaml` file. To deploy pca as a standalone application in a kubernetes cluster, run the following commands:

For default deployment using default values:
```
cd ./helm
helm install <installation-name> --set imageRegistryUsername=<username> --set imageRegistryPassword=<password> ./
```

# Deploy as Subchart
To deploy pca as a subchart of sdelements, checkout the sde-docker project and follow instructions in the helm README.md

# To package the chart
To package the helm chart into .tgz file, run the following
```
helm package --version <x.x.x> --app-version <x.x.x> helm/
```
