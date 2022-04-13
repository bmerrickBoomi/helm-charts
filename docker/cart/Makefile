all: 
	docker.exe build -t brianmerrick02/boomi-demo-cart .
	docker.exe image prune -f

publish: all
	docker push brianmerrick02/boomi-demo-cart:latest
  
clean:
	rm -rf node_modules
	docker.exe image prune -f
