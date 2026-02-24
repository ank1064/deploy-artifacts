# Deploy artifacts

Artifacts for deployment: pre-service hook script and a sample Bitnami Helm chart.

**GitHub:** [ank1064](https://github.com/ank1064)

---

## Contents

| Path | Description |
|------|-------------|
| [`pre-service-hook.sh`](pre-service-hook.sh) | Pre-service deployment hook: prints CWD and sleeps 10 minutes. |
| [`sample-bitnami-helm/`](sample-bitnami-helm/) | Sample Helm chart using Bitnami Redis; includes `values.yaml`. |

### Pre-service hook

```bash
./pre-service-hook.sh
```

### Bitnami Helm chart

```bash
cd sample-bitnami-helm
helm repo add bitnami https://charts.bitnami.com/bitnami
helm dependency update
helm install my-release . -f values.yaml
```

See [sample-bitnami-helm/README.md](sample-bitnami-helm/README.md) for details.
