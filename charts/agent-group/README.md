# agent-group

[agent-group](https://github.com/jitterbit/charts) is a group of agents in the Harmony platform.

## Introduction

This chart bootstraps an agent-group stateful set on a [Kubernetes](http://kubernetes.io) namespace using the [Helm](https://helm.sh) package manager.

## Prerequisites

  - Kubernetes 1.9+

## Installing/Upgrading the Chart

To install or upgrade the chart with the release name `my-release`

```bash
$ helm upgrade --install --namespace apps --values ./my-values.yaml my-release jitterbit/agent-group
```

The command deploys `agent-group` on the Kubernetes cluster in the `apps` namespace.
The [configuration](#configuration) section lists common parameters that will be configured often
during installation and upgrade.
For a full list of the parameters that can be configured, see the [values.yaml](values.yaml) file.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall the `my-release` release:

```bash
$ helm uninstall --namespace apps my-release
```

The command removes all Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists commonly configured parameters of the agent-group chart and their default values.

Parameter | Description | Default
--- | --- | ---
`image.repository` | The image repository to pull from | `jitterbit/agent`
`image.tag` | The image tag to pull | `nil` You must provide a digest or a tag (digest takes precedence)
`image.digest` | The image digest to pull | `nil` You must provide a digest or a tag
`agent.registerjson` | The agent group's register.json file | `nil`
`agent.jitterbitconf` | The agent group's jitterbit.conf file | `{}`
`hpa.enable` | Enable/disable the Horizontal Pod Autoscaler | `true`
`hpa.minReplicas` | If `hpa.enabled` is `true`, set minimum number of replicas | `1`
`hpa.maxReplicas` | If `hpa.enabled` is `true`, set maximum number of replicas | `1`
`hpa.metrics` | If `hpa.enabled` is `true`, scale based on these metrics | `{...}` See the [values.yaml](values.yaml) file
`replicas` | If `hpa.enabled` is `false` or the Horizontal Pod Autoscaler is malfunctioning, set the static number of replicas | `1`
`resources` | Resources allocated for the container | `{requests: {cpu: 50m, memory: 0.75Gi}, limits: {cpu: 250m, memory: 1Gi}}`

Specify the values for the parameters in a YAML file that can be provided while installing or upgrading the chart.
For example,

```bash
$ helm upgrade --install --values ./my-values.yaml agent-group jitterbit/agent-group
```
