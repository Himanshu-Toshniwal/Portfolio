#!/bin/bash

# Build and deploy portfolio

echo "Building Docker image..."
docker build -t portfolio-app .

echo "Running container..."
docker run -d -p 8080:80 --name portfolio portfolio-app

echo "Portfolio deployed at http://localhost:8080"