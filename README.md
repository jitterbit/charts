# Jitterbit Helm Repository

[![GitHub Actions](https://github.com/jitterbit/charts/workflows/Release/badge.svg?branch=master)](https://github.com/jitterbit/charts/actions?query=workflow%3A%22Release%22+branch%3Amaster)

[![Jitterbit](./logos/jitterbit-logo-horizontal-rgb.png)](https://www.jitterbit.com)

Helm Charts are curated application definitions for Kubernetes Helm.

- For information on installing and using Helm, see the
  [Helm README.md](https://github.com/kubernetes/helm/tree/master/README.md).
- For a quick introduction to Helm Charts, see the
  [Kubernetes chart document](https://github.com/kubernetes/helm/blob/master/docs/charts.md).
- For detailed information on using Helm, refer to [Helm's documentation](https://github.com/kubernetes/helm#docs).
- Make sure that you install the latest Helm client. See the documentation on
  [installing Helm](https://docs.helm.sh/using_helm/#installing-helm).


## Adding the Jitterbit Helm Repository

```bash
helm repo add jitterbit https://jitterbit.github.io/charts
# "jitterbit" has been added to your repositories
```


## Installing a Jitterbit Private Agent Group

```bash
helm upgrade --install agent-group jitterbit/agent-group
```

For details on installing a Jitterbit Private Agent Group, see the `agent-group` chart's
[README](https://github.com/jitterbit/charts/tree/master/charts/agent-group).


## Installing a Jitterbit Private API Gateway

```bash
helm upgrade --install api-gateway jitterbit/api-gateway
```

For details on installing a Jitterbit Private API Gateway, see the `api-gateway` chart's
[README](https://github.com/jitterbit/charts/tree/master/charts/api-gateway).
