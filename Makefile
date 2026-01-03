.PHONY: help install dev build test docker-build k8s-deploy clean

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Install all dependencies
	npm install
	npm run install:all

dev: ## Start development environment
	npm run dev

build: ## Build all services
	npm run build

test: ## Run all tests
	npm run test

docker-build: ## Build all Docker images
	./scripts/docker-build-all.sh

k8s-deploy: ## Deploy to Kubernetes
	./scripts/k8s-deploy.sh

clean: ## Clean build artifacts
	rm -rf node_modules
	rm -rf services/*/node_modules
	rm -rf services/*/dist
	rm -rf services/*/build
