# 🚀 NeoTrade Platform

A production-ready algorithmic trading platform built with microservices architecture.

## 🏗️ Architecture

- **Frontend**: React + Vite + Tailwind CSS
- **Backend**: Node.js microservices
- **Database**: PostgreSQL + Redis
- **Message Queue**: RabbitMQ / Kafka
- **Container**: Docker
- **Orchestration**: Kubernetes
- **CI/CD**: GitHub Actions

## 📦 Services

| Service | Port | Description |
|---------|------|-------------|
| Frontend | 3000 | React web application |
| API Gateway | 8000 | Main entry point |
| Market Data | 8001 | Live market feeds |
| Order Management | 8002 | Order execution |
| Trading Engine | 8003 | Algorithmic trading |
| Analytics | 8004 | Insights & metrics |
| Notification | 8005 | Alerts system |
| Auth | 8006 | Authentication |

## 🚀 Quick Start

### Prerequisites
- Node.js 20+
- Docker & Docker Compose
- Kubernetes (minikube/kind for local)
- kubectl

### Local Development

```bash
# Clone repository
git clone https://github.com/your-org/neotrade-platform.git
cd neotrade-platform

# Install dependencies
npm run install:all

# Start all services in development mode
npm run dev

# Or start with Docker Compose
docker-compose -f infrastructure/docker-compose/docker-compose.dev.yml up
```

### Build Docker Images

```bash
# Build all services
npm run docker:build

# Or build specific service
cd services/frontend
docker build -t neotrade-frontend:latest .
```

### Deploy to Kubernetes

```bash
# Apply Kubernetes manifests
kubectl apply -f infrastructure/kubernetes/base/
kubectl apply -f infrastructure/kubernetes/deployments/
kubectl apply -f infrastructure/kubernetes/services/
kubectl apply -f infrastructure/kubernetes/ingress/
```

## 📚 Documentation

- [API Documentation](./docs/api/)
- [Architecture Guide](./docs/architecture/)
- [Deployment Guide](./docs/deployment/)
- [Development Guide](./docs/development/)

## 🤝 Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

## 📄 License

MIT License - see [LICENSE](./LICENSE)
