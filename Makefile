all: 
	helm lint helm-chart-sources/*
	helm package helm-chart-sources/*
	helm repo index --url https://bmerrickboomi.github.io/helm-charts .

clean:
	rm -rf *.tgz
