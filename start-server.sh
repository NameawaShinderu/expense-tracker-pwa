#!/bin/bash

echo ""
echo "===================================="
echo "   Expense Tracker PWA Setup"
echo "===================================="
echo ""

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check for Python
if command_exists python3; then
    echo "[✓] Python 3 found"
    echo "[INFO] Starting HTTP server on http://localhost:8000"
    echo "[INFO] Open your browser and go to: http://localhost:8000/setup.html"
    echo ""
    echo "[NOTE] Press Ctrl+C to stop the server"
    echo ""
    python3 -m http.server 8000
elif command_exists python; then
    echo "[✓] Python found"
    echo "[INFO] Starting HTTP server on http://localhost:8000"
    echo "[INFO] Open your browser and go to: http://localhost:8000/setup.html"
    echo ""
    echo "[NOTE] Press Ctrl+C to stop the server"
    echo ""
    python -m http.server 8000

# Check for Node.js
elif command_exists node; then
    echo "[✓] Node.js found"
    
    # Check if http-server is installed
    if ! command_exists http-server; then
        echo "[INFO] Installing http-server..."
        npm install -g http-server
    fi
    
    echo "[INFO] Starting HTTP server on http://localhost:8000"
    echo "[INFO] Open your browser and go to: http://localhost:8000/setup.html"
    echo ""
    echo "[NOTE] Press Ctrl+C to stop the server"
    echo ""
    http-server . -p 8000

# Check for PHP
elif command_exists php; then
    echo "[✓] PHP found"
    echo "[INFO] Starting PHP server on http://localhost:8000"
    echo "[INFO] Open your browser and go to: http://localhost:8000/setup.html"
    echo ""
    echo "[NOTE] Press Ctrl+C to stop the server"
    echo ""
    php -S localhost:8000

# No server found
else
    echo "[ERROR] No suitable server found!"
    echo ""
    echo "Please install one of the following:"
    echo "  1. Python 3.x (recommended)"
    echo "  2. Node.js with npm"
    echo "  3. PHP 7.4+"
    echo ""
    echo "Installation commands:"
    echo "  Ubuntu/Debian: sudo apt install python3"
    echo "  macOS: brew install python3"
    echo "  CentOS/RHEL: sudo yum install python3"
    echo ""
    echo "Or manually open index.html in your browser"
    echo "(Note: PWA features require a local server)"
    echo ""
fi