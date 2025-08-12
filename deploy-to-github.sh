#!/bin/bash

echo ""
echo "====================================="
echo "   Deploy Expense Tracker to GitHub"
echo "====================================="
echo ""

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "[ERROR] Git is not installed!"
    echo ""
    echo "Please install Git first:"
    echo "  Ubuntu/Debian: sudo apt install git"
    echo "  macOS: brew install git (or install Xcode)"
    echo "  CentOS/RHEL: sudo yum install git"
    echo ""
    echo "Or upload files manually to GitHub."
    exit 1
fi

echo "[✓] Git found"

# Get GitHub repository URL
echo ""
read -p "Enter your GitHub repository URL (e.g., https://github.com/username/expense-tracker): " GITHUB_URL

if [ -z "$GITHUB_URL" ]; then
    echo "[ERROR] GitHub URL is required!"
    exit 1
fi

echo ""
echo "[INFO] Preparing deployment..."

# Initialize Git repository if not exists
if [ ! -d ".git" ]; then
    echo "[INFO] Initializing Git repository..."
    git init
fi

# Add all files
echo "[INFO] Adding files to Git..."
git add .

# Commit changes
echo "[INFO] Committing changes..."
git commit -m "Deploy enhanced expense tracker PWA to GitHub Pages"

# Add remote origin
echo "[INFO] Setting up remote repository..."
git remote remove origin 2>/dev/null || true
git remote add origin "$GITHUB_URL"

# Push to GitHub
echo "[INFO] Pushing to GitHub..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "========================================"
    echo "[✓] SUCCESS! Deployment completed!"
    echo "========================================"
    echo ""
    echo "Next steps:"
    echo "1. Go to your GitHub repository"
    echo "2. Click Settings → Pages"
    echo "3. Source: Deploy from branch 'main'"
    echo "4. Your app will be live at:"
    echo "   ${GITHUB_URL%.git}/pages (approximately)"
    echo ""
    echo "Note: It may take 5-10 minutes to go live."
else
    echo ""
    echo "[ERROR] Deployment failed!"
    echo "Please check your GitHub URL and try again."
    echo "Or upload files manually to GitHub."
fi

echo ""