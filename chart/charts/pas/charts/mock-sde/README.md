# Mock SDE Helm Chart
Can be used to launch a mock sde deployment in your k8s cluster. If deployed to the same namespace as other PAS services like the PAS API service, it can be used in place of a real SDE instance by configuring the `SDE_URL` of the PAS API service deployment to point to the internal address of the mock sde service.

## Usage
For first time installs of the deployment run the following command from this directory:

`helm install mock-sde .`

To configure the SDE secret key at runtime, you can add the following argument to the helm command: `--set secretKey=<theSecretKey>`

## Updating the image
Use the `build_and_tag_mock_sde.sh` script to build a new mock-sde image (you will need to bump the version in the script as well). 
The `appVersion` in the chart.yaml should match the tag for the newly built image.
