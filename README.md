# Personal Expense Tracker - Enhanced PWA

A comprehensive Progressive Web App for tracking personal expenses with offline support, advanced categorization, and data analytics.

## 🚀 **Quick Deploy to GitHub Pages**

### **🌐 Deploy in 3 Steps:**

1. **Create GitHub Repository:**
   - Go to [GitHub.com](https://github.com) → New Repository
   - Name: `expense-tracker-pwa` (or any name)
   - Make it **Public** → Create Repository

2. **Upload Files:**
   - **Easy**: Run `deploy-to-github.bat` (Windows) or `./deploy-to-github.sh` (Mac/Linux)
   - **Manual**: Upload all project files to your GitHub repository

3. **Enable GitHub Pages:**
   - Repository → Settings → Pages
   - Source: **Deploy from branch "main"**
   - Your app will be live at: `https://yourusername.github.io/your-repo-name`

### **📱 Access from Anywhere:**
- ✅ **No local server needed** - works directly from GitHub
- ✅ **HTTPS enabled** - full PWA features available
- ✅ **Install on any device** - mobile and desktop
- ✅ **Offline functionality** - works without internet

---

## ✨ Features

### 📊 **Enhanced Expense Management**
- Add expenses with custom categories and subcategories
- Real-time expense tracking with totals for current period, monthly, and yearly views
- Smart categorization with predefined and custom categories
- Detailed expense descriptions and date tracking

### 🏷️ **Advanced Category System**
- **Dynamic Categories**: Add new expense categories on-the-fly
- **Subcategory Support**: Organize expenses with detailed subcategories
- **Category Analytics**: View spending breakdown by category and subcategory
- **Smart Totals**: Automatic calculation of totals for current, monthly, and yearly periods

### 📱 **Progressive Web App (PWA)**
- **Offline Functionality**: Works completely offline with local storage
- **Installable**: Can be installed on mobile and desktop devices
- **Background Sync**: Automatically syncs data when back online
- **Session Persistence**: Never lose your data, even when offline
- **Responsive Design**: Works perfectly on all devices

### 🗑️ **Advanced Delete Options**
- **Individual Expense Deletion**: Remove specific expenses with X button
- **Category-wise Deletion**: Delete all expenses from a specific category
- **Bulk Delete Options**: 
  - Delete all expenses
  - Delete current month's expenses
  - Delete current year's expenses
- **Double Confirmation**: Secure deletion with type-to-confirm protection

### 📈 **Data Visualization**
- **Multiple Chart Types**: 
  - Pie chart for category breakdown
  - Subcategory analysis
  - Monthly spending trends (line chart)
- **Interactive Charts**: Hover for detailed information
- **Export Functionality**: Download data as CSV for external analysis

### 🔒 **Data Persistence**
- **IndexedDB Storage**: Primary storage for offline functionality
- **localStorage Backup**: Fallback storage mechanism
- **Auto-sync**: Automatic synchronization when online
- **Session Recovery**: Resume where you left off

## 🚀 Installation & Setup

### 1. **Download the Files**
```bash
# Clone or download the project files to your local machine
cd expense-tracker
```

### 2. **Generate PWA Icons**
```bash
# Open the icon generator in your browser
open icons/generate-icons.html
```
- Download all icon sizes (16px to 512px)
- Save them in the `/icons/` folder with exact filenames (icon-16.png, icon-32.png, etc.)

### 3. **Serve the Application**

**Option A: Simple HTTP Server**
```bash
# Using Python 3
python -m http.server 8000

# Using Node.js
npx http-server .

# Using PHP
php -S localhost:8000
```

**Option B: Local Development**
```bash
# Just open index.html in your browser for basic functionality
# PWA features require HTTPS or localhost
```

### 4. **Install as PWA**
1. Open the app in Chrome/Edge/Safari
2. Look for "Install" button in address bar
3. Or use browser menu → "Install Expense Tracker"
4. App will be available on desktop/mobile home screen

## 💡 Usage Guide

### **Adding Expenses**
1. **Amount**: Enter the expense amount in ₹
2. **Category**: Select from existing or add new categories
3. **Subcategory**: Choose relevant subcategory (optional)
4. **Description**: Add details about the expense
5. **Date**: Auto-filled with today's date (editable)
6. Click **"Add Expense"**

### **Managing Categories**
- **Add Category**: Click "+ Add Category" in the form
- **Add Subcategory**: Click "+ Add Subcategory" and choose parent category
- Categories are saved permanently and sync across devices

### **Viewing Analytics**
- **Period Selection**: Toggle between Current (30 days), Monthly, or Yearly views
- **Charts**: Switch between Category breakdown, Subcategory analysis, and Monthly trends
- **Real-time Updates**: All charts and totals update automatically

### **Deleting Data**
- **Single Expense**: Click X button next to any expense
- **Category/Subcategory**: Click X button next to category totals
- **Bulk Operations**: Use buttons in Category Breakdown section
- **Double Confirmation**: Type "DELETE" for bulk operations

### **Export Data**
- Click **"📊 Export Data to CSV"**
- Downloads current period data
- Includes summary and category breakdown
- Import into Excel, Google Sheets, etc.

## 🔧 Technical Features

### **PWA Capabilities**
- Service Worker for offline functionality
- Web App Manifest for installation
- Background sync for data synchronization
- Cache-first strategy for assets
- Network-first for data updates

### **Data Storage**
- **Primary**: IndexedDB for structured data storage
- **Backup**: localStorage for compatibility
- **Offline Queue**: Stores expenses when offline
- **Auto-sync**: Syncs when connection restored

### **Responsive Design**
- Mobile-first approach
- Touch-friendly interface
- Adaptive layouts for all screen sizes
- High-DPI display support

### **Browser Compatibility**
- ✅ Chrome 80+
- ✅ Firefox 75+
- ✅ Safari 13+
- ✅ Edge 80+
- ✅ Mobile browsers (iOS Safari, Chrome Mobile)

## 📱 PWA Features Explained

### **Offline Mode**
- Complete functionality without internet
- Data stored locally on device
- Visual indicator of connection status
- Automatic sync when online

### **Installation**
- Appears as native app on device
- Works without browser UI
- Launches from home screen/desktop
- Updates automatically

### **Background Sync**
- Syncs offline data when connection restored
- Handles network interruptions gracefully
- No data loss during connectivity issues

## 🎨 Customization

### **Adding Custom Categories**
```javascript
// Default categories in the code
expenseData.categories = {
    'Food': ['Restaurant', 'Groceries', 'Snacks', 'Beverages'],
    'Transportation': ['Fuel', 'Public Transport', 'Taxi'],
    'Healthcare': ['Doctor', 'Medicines', 'Insurance'],
    // Add your custom categories here
};
```

### **Modifying Chart Colors**
```javascript
// Update the color palette in the code
const chartColors = [
    '#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0',
    // Add more colors as needed
];
```

### **Currency Customization**
- Currently set to Indian Rupees (₹)
- Can be modified in the code for other currencies
- Search and replace ₹ symbol throughout the code

## 🛠️ Troubleshooting

### **PWA Not Installing**
- Ensure you're accessing via HTTPS or localhost
- Check that all required manifest fields are present
- Verify icon files are available

### **Offline Mode Not Working**
- Check browser console for service worker errors
- Ensure all required files are cached
- Try clearing browser cache and reloading

### **Data Not Syncing**
- Check network connectivity
- Verify IndexedDB is supported in browser
- Clear browser data and restart app

### **Charts Not Displaying**
- Ensure Chart.js library loads correctly
- Check for JavaScript errors in console
- Verify data format is correct

## 📊 Data Format

### **Expense Object Structure**
```javascript
{
    id: 1629123456789,           // Unique timestamp ID
    amount: 250.50,              // Expense amount
    category: "Food",            // Main category
    subcategory: "Restaurant",   // Subcategory (optional)
    description: "Lunch at cafe", // Description (optional)
    date: "2025-08-12",         // Date in YYYY-MM-DD format
    timestamp: "2025-08-12T10:30:00.000Z" // ISO timestamp
}
```

## 🔄 Future Enhancements

- [ ] Cloud sync with Google Drive/Dropbox
- [ ] Budget planning and alerts
- [ ] Receipt photo capture
- [ ] Multi-currency support
- [ ] Advanced analytics and reporting
- [ ] Expense categories learning/suggestions
- [ ] Export to PDF reports
- [ ] Dark mode theme

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

---

**Happy Expense Tracking! 💰📊**