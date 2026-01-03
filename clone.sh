# 1. Run the setup script to create structure
chmod +x setup-repository.sh
./setup-repository.sh

# 2. Move your existing files
cd neotrade-platform

# Copy your current App.jsx
cp /path/to/your/current/App.jsx services/frontend/src/App.jsx

# Copy index.css
cp /path/to/your/current/index.css services/frontend/src/index.css

# Copy main.jsx
cp /path/to/your/current/main.jsx services/frontend/src/main.jsx

# Copy other configs
cp /path/to/your/current/package.json services/frontend/package.json
cp /path/to/your/current/vite.config.js services/frontend/vite.config.js
cp /path/to/your/current/tailwind.config.js services/frontend/tailwind.config.js
cp /path/to/your/current/postcss.config.cjs services/frontend/postcss.config.cjs
cp /path/to/your/current/Dockerfile services/frontend/Dockerfile
cp /path/to/your/current/nginx.conf services/frontend/nginx.conf

# 3. Initialize Git
git add .
git commit -m "feat: initial repository structure"

# 4. Create GitHub repository
# Go to GitHub → New Repository → neotrade-platform

# 5. Push to GitHub
git remote add origin https://github.com/YOUR_USERNAME/neotrade-platform.git
git branch -M main
git push -u origin main

# 6. Create develop branch
git checkout -b develop
git push -u origin develop
