# helm-charts

Add the boomi chart

```
helm repo add boomi https://bmerrickboomi.github.io/helm-charts
```

## Atom

```
(
  CHART_NAME="REPLACE"
  INSTALL_TOKEN="REPLACE"
  helm install "atom-${CHART_NAME,,}" boomi/boomi-atom --set runtime.token="$INSTALL_TOKEN" --set runtime.name="$CHART_NAME" --create-namespace --namespace atom-${CHART_NAME,,}
)
```