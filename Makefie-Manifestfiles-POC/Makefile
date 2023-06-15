# Variables
DOCKER_IMAGE = dadjokes:latest
DEPLOYMENT_NAME = dadjokes-deployment
SERVICE_NAME = dadjokes-service

# Build Docker image
build:
    docker build -t $(DOCKER_IMAGE) .

# Deploy to Minikube
deploy:
    kubectl apply -f deployment.yaml
    kubectl apply -f service.yaml
    kubectl apply -f ingress.yml
    kubectl apply -f dadjokeshpa.yml

# Undeploy from Minikube
undeploy:
    kubectl delete -f service.yaml
    kubectl delete -f deployment.yaml
    kubectl delete -f ingress.yml
    kubectl delete -f dadjokeshpa.yml

# Get the Minikube IP
minikube-ip:
    minikube ip

# Access the dadjokes application
access:
    @echo "Access the dadjokes application at http://$$(minikube ip):$$(kubectl get service $(SERVICE_NAME) -o 'jsonpath={.spec.ports[0].nodePort}')"

# Help
help:
    @echo "Available targets:"
    @echo "- build: Build the Docker image"
    @echo "- deploy: Deploy the dadjokes application to Minikube"
    @echo "- undeploy: Undeploy the dadjokes application from Minikube"
    @echo "- minikube-ip: Get the IP address of Minikube"
    @echo "- access: Access the dadjokes application in Minikube"
    @echo "- help: Display this help message"
