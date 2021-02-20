.PHONY:minikube/start
minikube/start:
	minikube config set cpus 6
	minikube config set memory 8192
	minikube config set disk-size 50GB
	# config設定の後に一度deleteの必要がある
	minikube delete
	minikube start --vm-driver=virtualbox

.PHONY: minikube/dashboard
minikube/dashboard:
	minikube dashboard

.PHONY: minikube/delete
minikube/delete:
	minikube delete
