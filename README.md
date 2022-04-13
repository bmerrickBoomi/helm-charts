# helm-charts

Add the boomi chart

```
helm repo add boomi https://bmerrickboomi.github.io/helm-charts
```

Update the helm repo when new changes are available

```
helm repo update boomi
```

## Atom

Install

```
(
  CHART_NAME="REPLACE"
  CHART_LOWER=${CHART_NAME,,}
  INSTALL_TOKEN="REPLACE"
  helm install "atom-$CHART_LOWER" boomi/boomi-atom --set runtime.token="$INSTALL_TOKEN" --set runtime.name="$CHART_NAME" --create-namespace --namespace atom-$CHART_LOWER
)
```

Delete

```
CHART_LOWER=${"REPLACE",,}
helm uninstall atom-$CHART_LOWER -n atom-$CHART_LOWER
kubectl delete namespace atom-$CHART_LOWER