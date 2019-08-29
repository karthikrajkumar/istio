ISTIO_VERSION=1.2.5


welcomes:
	@echo "Welcome to the installation demo of istio environment and microservices"

download-istio:
	@echo "Downloading Istio"
	wget https://github.com/istio/istio/releases/download/$(ISTIO_VERSION)/istio-$(ISTIO_VERSION)-linux.tar.gz
	tar -zxvf istio-$(ISTIO_VERSION)-linux.tar.gz

minikube-start:
	minikube start

minikube-dashboard:
	minikube dashboard

cluster-info:
	kubectl cluster-info

get-nodes:
	kubectl get nodes

get-pod:
	kubectl get pods

run-existing:
	kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.10 --port=8080


expose-existing:
		kubectl expose deployment hello-minikube --type=NodePort

delete-existing:
	kubectl delete services hello-minikube

delete-deployment-existing:
	kubectl delete deployment hello-minikube

minikube-stop:
	minikube stop

minikube-delete:
	minikube delete
