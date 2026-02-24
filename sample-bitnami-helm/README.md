# Sample Bitnami Helm Chart

Deploys **Redis** from the [Bitnami Helm repository](https://github.com/bitnami/charts).

## Quick start

```bash
# Add Bitnami repo
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# Download dependency (Redis chart)
helm dependency update

# Install with default values
helm install my-release . -f values.yaml

# Or install with a custom release name and namespace
helm install my-redis . -f values.yaml -n my-namespace --create-namespace
```

## Override values

```bash
# Inline overrides
helm install my-release . -f values.yaml --set redis.auth.password=mysecret

# Custom values file
helm install my-release . -f values.yaml -f my-overrides.yaml
```

## Upgrade / uninstall

```bash
helm upgrade my-release . -f values.yaml
helm uninstall my-release
```

## Chart dependency

- **Redis** (Bitnami) – version pinned in `Chart.yaml`; customize under `redis:` in `values.yaml`.

To add more Bitnami charts (e.g. PostgreSQL, MongoDB, Nginx), add a `dependencies` entry in `Chart.yaml` and add the corresponding block in `values.yaml`, then run `helm dependency update`.
