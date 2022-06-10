up:
	minikube start
	$(info $(minikube docker-env))
	docker build -t app-server:new ./server -f ./server/Dockerfile --no-cache
	docker build -t app-client:new ./client -f ./client/Dockerfile --no-cache
	kubectl apply -f server-deployment.yaml
	kubectl apply -f client-deployment.yaml
	kubectl get pods

down:
	$(info $(minikube docker-env -u))
	# eval $(minikube docker-env -u)
	minikube stop
	minikube delete

