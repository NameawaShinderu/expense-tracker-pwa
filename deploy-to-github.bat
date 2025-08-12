@echo off
echo.
echo =====================================
echo   Deploy Expense Tracker to GitHub
echo =====================================
echo.

REM Check if Git is installed
git --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Git is not installed!
    echo.
    echo Please install Git from: https://git-scm.com/
    echo Or upload files manually to GitHub.
    echo.
    pause
    exit /b 1
)

echo [✓] Git found

REM Get GitHub repository URL
echo.
set /p GITHUB_URL="Enter your GitHub repository URL (e.g., https://github.com/username/expense-tracker): "

if "%GITHUB_URL%"=="" (
    echo [ERROR] GitHub URL is required!
    pause
    exit /b 1
)

echo.
echo [INFO] Preparing deployment...

REM Initialize Git repository if not exists
if not exist ".git" (
    echo [INFO] Initializing Git repository...
    git init
)

REM Add all files
echo [INFO] Adding files to Git...
git add .

REM Commit changes
echo [INFO] Committing changes...
git commit -m "Deploy enhanced expense tracker PWA to GitHub Pages"

REM Add remote origin
echo [INFO] Setting up remote repository...
git remote remove origin 2>nul
git remote add origin %GITHUB_URL%

REM Push to GitHub
echo [INFO] Pushing to GitHub...
git branch -M main
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo [✓] SUCCESS! Deployment completed!
    echo ========================================
    echo.
    echo Next steps:
    echo 1. Go to your GitHub repository
    echo 2. Click Settings → Pages
    echo 3. Source: Deploy from branch "main"
    echo 4. Your app will be live at:
    echo    %GITHUB_URL:.git=%/
    echo    (Replace .git with your username and repo name)
    echo.
    echo Note: It may take 5-10 minutes to go live.
) else (
    echo.
    echo [ERROR] Deployment failed!
    echo Please check your GitHub URL and try again.
    echo Or upload files manually to GitHub.
)

echo.
pause