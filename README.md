# Jitterbit Helm Repository

[![GitHub Actions](https://github.com/jitterbit/charts/workflows/Release/badge.svg?branch=master)](https://github.com/jitterbit/charts/actions?query=workflow%3A%22Release%22+branch%3Amaster)

[![Jitterbit](https://www.jitterbit.com/wp-content/uploads/2017/04/jitterbit-logo-horiz-rgb-website-364-70.png)](https://www.jitterbit.com)

Charts are curated application definitions for Kubernetes Helm. For more information about installing and using Helm, see its
[README.md](https://github.com/kubernetes/helm/tree/master/README.md). To get a quick introduction to Charts see this [chart document](https://github.com/kubernetes/helm/blob/master/docs/charts.md).

For more information on using Helm, refer to the [Helm's documentation](https://github.com/kubernetes/helm#docs).

Make sure you install the latest Helm client. Documentation on this can be found at https://docs.helm.sh/using_helm/#installing-helm.

## Add the Jitterbit Helm repository

```bash
helm repo add jitterbit https://jitterbit.github.io/charts
# "jitterbit" has been added to your repositories
```

## Install a Jitterbit Agent Group

```bash
helm upgrade --install agent-group jitterbit/agent-group
```

For more details on installing the Jitterbit Agent Group please see the [chart's README](https://github.com/jitterbit/charts/tree/master/charts/agent-group).

## Install a Jitterbit API Gateway

```bash
helm upgrade --install api-gateway jitterbit/api-gateway
```

For more details on installing the Jitterbit API Gateway please see the [chart's README](https://github.com/jitterbit/charts/tree/master/charts/api-gateway).
