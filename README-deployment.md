# Portfolio Deployment Guide

## 🚀 Complete DevOps Project

### 1. Docker Setup
```bash
# Build image
docker build -t portfolio-app .

# Run locally
docker run -d -p 8080:80 --name portfolio portfolio-app

# Tag for Docker Hub
docker tag portfolio-app himanshutoshniwal7570/portfolio-app:latest

# Push to Docker Hub
docker push himanshutoshniwal7570/portfolio-app:latest
```

### 2. Docker Compose
```bash
# Start with compose
docker-compose up -d

# Stop
docker-compose down
```

### 3. Kubernetes Deployment
```bash
# Apply configuration
kubectl apply -f k8s-deployment.yaml

# Check pods
kubectl get pods

# Get service IP
kubectl get svc portfolio-service

# Access via LoadBalancer IP
# http://<EXTERNAL-IP>
```

### 4. Monitoring Commands
```bash
# Check pod logs
kubectl logs -f deployment/portfolio-deployment

# Scale replicas
kubectl scale deployment portfolio-deployment --replicas=5

# Delete deployment
kubectl delete -f k8s-deployment.yaml
```

## 📋 Project Structure
- ✅ Static HTML Portfolio
- ✅ Dockerfile (Multi-stage not needed)
- ✅ Docker Compose
- ✅ Kubernetes Deployment
- ✅ Docker Hub Integration
- ✅ Health Checks
- ✅ Resource Limits

## 🎯 Skills Demonstrated
- Docker containerization
- Docker Hub registry
- Kubernetes orchestration
- Load balancing
- Health monitoring
- Resource management