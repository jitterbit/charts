# agent-group

The [agent-group](https://github.com/jitterbit/charts) is a group of Jitterbit Private Agents of the [Jitterbit
Harmony](https://jitterbit.com) platform.

This chart bootstraps an agent-group stateful set on a [Kubernetes](https://kubernetes.io) namespace using the
[Helm](https://helm.sh) package manager.


## Prerequisites

- Kubernetes 1.9+


## Installing or Upgrading the Chart

To install or upgrade the chart with the release name `my-release`, use the command:

```bash
$ helm upgrade --install --namespace apps --values ./my-values.yaml my-release jitterbit/agent-group
```
This example command deploys the `agent-group` on the Kubernetes cluster in the `apps` namespace.

The [configuration](#configuration) section lists common parameters that will be configured often during
installation and upgrade.

For a full list of the parameters that can be configured, see the [values.yaml](values.yaml) file.

> **Tip**: To list all releases, use the command `helm list`


## Uninstalling the Chart

To uninstall the `my-release` release, use the command:

```bash
$ helm uninstall --namespace apps my-release
```
This example command removes all Kubernetes components in the `apps` namespace associated with the chart and deletes
the release.


## Configuration

This table lists commonly-configured parameters of the agent-group chart and their default values.

| Parameter             | Default                                  | Description                                                                                                              |
| --------------------- | ---------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| `image.repository`    | `jitterbit/agent`                        | The image repository to pull from                                                                                        |
| `image.tag`           | `nil`                                    | The image tag to pull. You must provide a digest or a tag (digest takes precedence).                                     |
| `image.digest`        | `nil`                                    | The image digest to pull. You must provide a digest or a tag.                                                            |
| `agent.registerjson`  | `nil`                                    | The agent group's `register.json` file                                                                                   |
| `agent.jitterbitconf` | `{}`                                     | The agent group's `jitterbit.conf` file                                                                                  |
| `hpa.enabled`         | `true`                                   | Enable (or disable) the Horizontal Pod Autoscaler                                                                        |
| `hpa.minReplicas`     | `1`                                      | If `hpa.enabled` is `true`, set minimum number of replicas                                                               |
| `hpa.maxReplicas`     | `1`                                      | If `hpa.enabled` is `true`, set maximum number of replicas                                                               |
| `hpa.metrics`         | `{...}`                                  | If `hpa.enabled` is `true`, scale based on these metrics. See the [values.yaml](values.yaml) file.                       |
| `replicas`            | `1`                                      | If `hpa.enabled` is `false` or the Horizontal Pod Autoscaler is malfunctioning, use to set the static number of replicas |
| `resources`           | `{requests: {cpu: 50m, memory: 0.75Gi},` | Resources allocated for the container                                                                                    |
|                       | `limits: {cpu: 250m, memory: 1Gi}}`      | Resources allocated for the container                                                                                    |

Specify the values for the parameters in a YAML file that can be provided while installing or upgrading the chart.
For example:

```bash
$ helm upgrade --install --values ./my-values.yaml agent-group jitterbit/agent-group
```
