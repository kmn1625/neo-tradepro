#!/bin/bash
# Deploy to Kubernetes

set -e

NAMESPACE=${1:-neotrade}
ENV=${2:-dev}

echo "🚀 Deploying NeoTrade Platform to Kubernetes..."
echo "   Namespace: $NAMESPACE"
echo "   Environment: $ENV"

# Create namespace
kubectl create namespace $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -

# Apply base configurations
kubectl apply -f infrastructure/kubernetes/base/ -n $NAMESPACE

# Apply deployments
kubectl apply -f infrastructure/kubernetes/deployments/ -n $NAMESPACE

# Apply services
kubectl apply -f infrastructure/kubernetes/services/ -n $NAMESPACE

# Apply ingress
kubectl apply -f infrastructure/kubernetes/ingress/ -n $NAMESPACE

# Apply HPA
kubectl apply -f infrastructure/kubernetes/hpa/ -n $NAMESPACE

echo "✅ Deployment complete!"
echo "🔍 Check status: kubectl get pods -n $NAMESPACE"
