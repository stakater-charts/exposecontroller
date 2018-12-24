# chart-exposecontroller

This repository contains a chart that is used to deploy exposecontroller to kubernetes.

- exposecontroller

## Installing

Install `exposecontroller` chart

```bash
helm install --name exposecontroller chartmuseum/exposecontroller --namespace <namespace-name>
```

you can also install from stakater public charts

```bash
helm install --name exposecontroller stakater/exposecontroller --namespace <namespace name>
```