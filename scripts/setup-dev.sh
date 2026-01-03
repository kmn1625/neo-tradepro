#!/bin/bash
# Setup local development environment

set -e

echo "🛠️ Setting up development environment..."

# Check prerequisites
command -v node >/dev/null 2>&1 || { echo "❌ Node.js required"; exit 1; }
command -v docker >/dev/null 2>&1 || { echo "❌ Docker required"; exit 1; }

# Install dependencies
echo "📦 Installing dependencies..."
npm install
npm run install:all

# Setup environment files
echo "📝 Creating environment files..."
for service in services/*/; do
  if [ -f "$service.env.example" ]; then
    cp "$service.env.example" "$service.env"
  fi
done

echo "✅ Development environment ready!"
echo "🚀 Start with: npm run dev"
