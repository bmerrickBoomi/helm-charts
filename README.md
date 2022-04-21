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
(
  CHART_LOWER="replace"
  helm uninstall atom-$CHART_LOWER -n atom-$CHART_LOWER
  kubectl delete namespace atom-$CHART_LOWER
)
```

## ElasticSearch

```
helm install elasticsearch bitnami/elasticsearch --create-namespace --namespace elasticsearch --set global.kibanaEnabled=true --set ingest.enabled=true
  
helm install apm-server elastic/apm-server --namespace elasticsearch -f apm/elastic/elastic-server.yaml

kubectl port-forward --namespace elasticsearch svc/elasticsearch-kibana 5601:5601 &
```

Copy BoomiKubernetesLocal/apm/elastic/elastic-apm-agent-VERSION.jar and BoomiKubernetesLocal/apm/elastic/elasticapm.properties to /mnt/boomi/apm and configure Atom/Molecule for tracing

```
https://blog.antsoftware.org/boomi-observability-elastic/

-javaagent:/mnt/boomi/apm/elastic-apm-agent-1.30.1.jar
```