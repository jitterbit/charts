# Jitterbit Helm Repository

[![Jitterbit](https://raw.githubusercontent.com/jitterbit/charts/master/logos/jitterbit-logo-horizontal-rgb.png)](https://www.jitterbit.com)

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
