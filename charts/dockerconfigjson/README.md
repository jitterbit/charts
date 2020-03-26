# dockerconfigjson

The [dockerconfigjson](https://github.com/jitterbit/charts) is a .dockerconfigjson secret that
other pods in the same namespace can use to pull image from private registries.

This chart bootstraps an `dockerconfigjson` secret on a [Kubernetes](https://kubernetes.io)
namespace using the [Helm](https://helm.sh) package manager.


## Installing or Upgrading the Chart

To install or upgrade the chart with the release name `my-release`, use the command:

```bash
$ helm upgrade --install --namespace apps --values ./my-values.yaml my-dockerconfigjson jitterbit/dockerconfigjson
```
This example command deploys the `dockerconfigjson` on the Kubernetes cluster in the `apps` namespace.

The [configuration](#configuration) section lists common parameters that will be configured during installation and
upgrade.

For a full list of the parameters that can be configured, see the [values.yaml](values.yaml) file.

**TIP:** To list all releases, use the command `helm list`


## Uninstalling the Chart

To uninstall the `my-release` release, use the command:

```bash
$ helm uninstall --namespace apps my-release
```
This example command removes all Kubernetes components in the `apps` namespace associated with the chart and deletes
the release.


## Configuration

This table lists commonly configured parameters of the `dockerconfigjson` chart and their default values.

| Parameter                        | Default                       | Description                                             |
| -------------------------------- | ----------------------------- | ------------------------------------------------------- |
| `imageCredentials[].registry`    | `https://index.docker.io/v1/` | The Docker registry                                     |
| `imageCredentials[].username`    | `nil`                         | The Docker user's username                              |
| `imageCredentials[].accessToken` | `nil`                         | The Docker user's access token (recommened) or password |

Specify the values for the parameters in a YAML file that can be provided while installing or upgrading the chart.
For example:

```bash
$ helm upgrade --install --values ./my-values.yaml my-dockerconfigjson jitterbit/dockerconfigjson
```
