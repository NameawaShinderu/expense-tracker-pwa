@echo off
echo.
echo ====================================
echo   Expense Tracker PWA Setup
echo ====================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [✓] Python found
    echo [INFO] Starting HTTP server on http://localhost:8000
    echo [INFO] Open your browser and go to: http://localhost:8000/setup.html
    echo.
    echo [NOTE] Press Ctrl+C to stop the server
    echo.
    python -m http.server 8000
    goto :EOF
)

REM Check if Node.js is installed
node --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [✓] Node.js found
    echo [INFO] Installing http-server...
    npm install -g http-server
    echo [INFO] Starting HTTP server on http://localhost:8000
    echo [INFO] Open your browser and go to: http://localhost:8000/setup.html
    echo.
    echo [NOTE] Press Ctrl+C to stop the server
    echo.
    http-server . -p 8000
    goto :EOF
)

REM Check if PHP is installed
php --version >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [✓] PHP found
    echo [INFO] Starting PHP server on http://localhost:8000
    echo [INFO] Open your browser and go to: http://localhost:8000/setup.html
    echo.
    echo [NOTE] Press Ctrl+C to stop the server
    echo.
    php -S localhost:8000
    goto :EOF
)

REM If no server found
echo [ERROR] No suitable server found!
echo.
echo Please install one of the following:
echo   1. Python 3.x (recommended)
echo   2. Node.js with npm
echo   3. PHP 7.4+
echo.
echo Or manually open index.html in your browser
echo (Note: PWA features require a local server)
echo.
pause