# 🚀 Deploy to GitHub Pages

## Quick Deployment Commands

### If you have Git installed:

```bash
# 1. Initialize Git repository
git init

# 2. Add all files
git add .

# 3. Commit files
git commit -m "Add enhanced expense tracker PWA"

# 4. Add your GitHub repository as remote
# Replace 'yourusername' and 'your-repo-name' with your actual details
git remote add origin https://github.com/yourusername/your-repo-name.git

# 5. Push to GitHub
git branch -M main
git push -u origin main
```

### Manual Upload:
If you don't have Git, simply:
1. Go to your GitHub repository
2. Click "uploading an existing file"
3. Drag and drop all project files
4. Commit changes

## After Upload:

1. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: Deploy from branch "main"
   - Save settings

2. **Your app will be live at:**
   ```
   https://yourusername.github.io/your-repo-name
   ```

3. **PWA Installation:**
   - Visit the URL on mobile/desktop
   - Look for "Install" prompt in browser
   - Add to home screen for native app experience

## Files Updated for GitHub Pages:
- ✅ `sw.js` - Updated paths for GitHub Pages
- ✅ `manifest.json` - Fixed start_url
- ✅ `index.html` - Service worker registration path

Your PWA will work perfectly on GitHub Pages with full offline functionality!