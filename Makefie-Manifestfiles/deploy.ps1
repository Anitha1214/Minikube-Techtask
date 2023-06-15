#: Builds the Docker image.
make build
#Deploys the dadjokes application to Minikube.
make deploy
#Retrieves the IP address of Minikube.
make minikube-ip
# Displays the URL to access the dadjokes application in Minikube.
make access
#Displays a list of available targets and their descriptions.
make help
