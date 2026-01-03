#!/bin/bash
# Build all Docker images

set -e

REGISTRY="your-registry.io"
VERSION=${1:-latest}

services=(
  "frontend"
  "api-gateway"
  "market-data-service"
  "order-management-service"
  "trading-engine"
  "analytics-service"
  "notification-service"
  "auth-service"
)

for service in "${services[@]}"; do
  echo "🐳 Building $service..."
  docker build -t $REGISTRY/neotrade-$service:$VERSION ./services/$service
  echo "✅ Built $service"
done

echo "🎉 All images built successfully!"
