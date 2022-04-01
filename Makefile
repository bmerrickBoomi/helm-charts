all: 
	helm lint helm-chart-sources/*/*
	helm package helm-chart-sources/*/*
	helm repo index --url https://github.com/bmerrickBoomi/helm-charts .

clean:
	rm -rf *.tgz
