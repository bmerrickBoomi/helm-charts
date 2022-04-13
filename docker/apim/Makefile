all: 
	docker.exe build -t brianmerrick02/boomi-apim .
	docker.exe image prune -f

publish: all
	docker push brianmerrick02/boomi-apim:latest

clean:
	docker.exe image prune -f
