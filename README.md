# 🚀 Portfolio DevOps Project

A complete DevOps project showcasing containerization, orchestration, and deployment of a personal portfolio website.

## 📋 Project Overview

This project demonstrates end-to-end DevOps practices including:
- **Containerization** with Docker
- **Container Orchestration** with Kubernetes
- **Container Registry** with Docker Hub
- **Infrastructure as Code** with YAML manifests
- **Health Monitoring** and **Resource Management**

## 🛠️ Technologies Used

- **Frontend**: HTML5, CSS3, JavaScript, Bootstrap
- **Containerization**: Docker
- **Orchestration**: Kubernetes
- **Registry**: Docker Hub
- **Web Server**: Nginx
- **Monitoring**: Kubernetes Health Probes

## 📁 Project Structure

```
portfolio-devops-project/
├── assets/                 # Static assets (CSS, JS, Images)
├── Dockerfile             # Container configuration
├── docker-compose.yml     # Multi-container setup
├── k8s-deployment.yaml    # Kubernetes manifests
├── nginx.conf            # Nginx configuration
├── index.html            # Main portfolio page
└── README.md             # Project documentation
```

## 🐳 Docker Deployment

### Build and Run Locally
```bash
# Build Docker image
docker build -t portfolio-app .

# Run container
docker run -d -p 8080:80 --name portfolio portfolio-app

# Access: http://localhost:8080
```

### Docker Compose
```bash
# Start services
docker-compose up -d

# Stop services
docker-compose down
```

### Docker Hub
```bash
# Tag image
docker tag portfolio-app himanshutoshniwal7570/portfolio-app:latest

# Push to registry
docker push himanshutoshniwal7570/portfolio-app:latest
```

## ☸️ Kubernetes Deployment

### Prerequisites
- Docker Desktop with Kubernetes enabled
- kubectl CLI tool

### Deploy to Kubernetes
```bash
# Apply manifests
kubectl apply -f k8s-deployment.yaml

# Check deployment
kubectl get pods
kubectl get services

# Access via LoadBalancer IP
kubectl get svc portfolio-service
```

### Monitoring
```bash
# View logs
kubectl logs -f deployment/portfolio-deployment

# Scale replicas
kubectl scale deployment portfolio-deployment --replicas=5

# Check resource usage
kubectl top pods
```

## 🔧 Configuration

### Resource Limits
- **CPU**: 50m (request) / 100m (limit)
- **Memory**: 64Mi (request) / 128Mi (limit)
- **Replicas**: 3 (High Availability)

### Health Checks
- **Liveness Probe**: HTTP GET / (30s delay, 10s interval)
- **Readiness Probe**: HTTP GET / (5s delay, 5s interval)

## 🌐 Live Demo

- **Docker Hub**: [himanshutoshniwal7570/portfolio-app](https://hub.docker.com/r/himanshutoshniwal7570/portfolio-app)
- **Local Access**: http://localhost:8080

## 📊 DevOps Skills Demonstrated

✅ **Containerization**: Docker multi-stage builds  
✅ **Orchestration**: Kubernetes deployments & services  
✅ **Registry Management**: Docker Hub integration  
✅ **Infrastructure as Code**: YAML manifests  
✅ **Monitoring**: Health probes & logging  
✅ **Scalability**: Horizontal pod autoscaling  
✅ **High Availability**: Multi-replica deployment  

## 🚀 Future Enhancements

- [ ] CI/CD Pipeline with GitHub Actions
- [ ] Helm Charts for package management
- [ ] Ingress Controller with SSL/TLS
- [ ] Monitoring with Prometheus & Grafana
- [ ] GitOps with ArgoCD

## 👨‍💻 Author

**Himanshu Toshniwal**
- LinkedIn: [himanshu-toshniwal](https://www.linkedin.com/in/himanshu-toshniwal-0156502b8)
- GitHub: [Himanshu-Toshniwal](https://github.com/Himanshu-Toshniwal)
- Email: tsl.himanshu23@gmail.com

---
⭐ **Star this repository if you found it helpful!**