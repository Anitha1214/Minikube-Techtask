
# Apply namespace
kubectl apply -f namespace.yml

# Apply deployment, service, and ingress
kubectl apply -f deployment.yml
kubectl apply -f service.yml
kubectl apply -f ingress.yml
kubectl apply -f dadjokeshpa.yml

# Verify deployment
kubectl wait --for=condition=available --timeout=300s deployment/dadjokes-deployment -n sre-techtask

# Print success message
echo "Dadjokes application deployed successfully.We can access the application http://dadjokes.local/"

curl dadjokes.local