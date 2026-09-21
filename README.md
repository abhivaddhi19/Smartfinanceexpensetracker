# Smart Expense Tracker & Personal Finance Management System

A professional, full-featured web application designed to help users track personal finances, categorize expenses, manage monthly budgets, analyze spending trends, scan receipts with OCR, import bank statements, receive smart alerts and recommendations, and generate downloadable PDF reports.

---

## 🌟 Key Features

1. **Secure Authentication & User Isolation**
   - User registration with real-time password strength meter & email validation.
   - Session authentication powered by **Spring Security** with BCrypt password hashing.
   - Strict user-isolated data access (users can only access their own transactions, budgets, alerts, and reports).

2. **Main Financial Dashboard**
   - **7 Live Metric Cards**: Total Income, Total Expenses, Current Balance, Monthly Spending, Monthly Savings, Monthly Budget, and Remaining Budget.
   - **Quick Action Buttons**: Add Income, Add Expense, 📷 Scan Receipt, 🏦 Import Bank Statement, 📊 View Analysis, 📄 Generate Report.
   - Interactive **Chart.js** visualizations for daily spending patterns and category distribution.
   - Recent transactions table with category badges, amounts, and quick actions.

3. **Transaction Management**
   - Record and edit income & expense transactions.
   - Multi-criteria filtering: date range, category, payment method (UPI, Cash, Credit Card, Debit Card, NetBanking), min/max amount, and keyword search.
   - Export filtered transactions to CSV.

4. **Category Management**
   - 17 default system categories (Food, Grocery, Shopping, Travel, Rent, Electricity, Water, Internet, Mobile, Education, Healthcare, Entertainment, EMI, Insurance, Fuel, Bills, Other).
   - Ability to create, update, and delete custom user categories (e.g. Gym, Subscriptions, Pets).

5. **Expense Analysis**
   - **Daily Analysis**: Today's total spending, transaction count, highest single expense, and average expense.
   - **Weekly Analysis**: Mon-Sun spending breakdown, total weekly expenditure, daily average, and peak spending day.
   - **Monthly Analysis**: Multi-month comparison, total income vs expense, savings rate, and daily spending trend.
   - **Category-Wise Analysis**: Percentage of total expenses per category with interactive visual progress bars.

6. **Charts & Analytics**
   - Category expenses pie & doughnut charts.
   - Income vs Expense comparative bar chart.
   - Multi-month savings growth line chart.

7. **Budget Management**
   - Set monthly budgets with instant utilization calculations.
   - Progress bar with automated threshold warning levels:
     - **Under 70%**: Normal Spending (Healthy)
     - **70% - 84%**: "70% of your monthly budget has been used"
     - **85% - 99%**: "Warning: You have used 85% of your monthly budget"
     - **100%**: "Your monthly budget has been exceeded"
     - **>100%**: "You have exceeded your monthly budget by ₹X,XXX"
   - Semi-circle budget gauge visualization.

8. **Smart Alerts & Notifications**
   - Live notification badge counter in header.
   - Automated triggers for budget threshold warnings, high individual spending (>₹5,000), low liquidity balance, and bill reminders.
   - Mark as read and batch dismiss actions.

9. **AI-Driven Smart Suggestions**
   - Data-driven financial advice engine analyzing actual spending habits:
     - Alerts if food and dining exceed 25% of monthly spending.
     - Advisories on discretionary shopping spikes.
     - Low savings rate (<20%) recommendations.
     - Detection of multiple recurring digital subscriptions (Netflix, Spotify, Prime, etc.).

10. **Receipt Scanner (OCR)**
    - Drag-and-drop receipt image upload.
    - OCR parser extracting Merchant Name, Date, Total Amount, Suggested Category, and line items.
    - Interactive review card where users can verify and adjust fields before committing the transaction to records.
    - Pre-loaded supermarket sample receipt for immediate evaluation.

11. **Bank Statement Import**
    - Import CSV or PDF bank statements from Indian and international banks (HDFC, SBI, ICICI, etc.).
    - Automatic classification: Credits -> Income, Debits -> Expense.
    - Automatic keyword matching to categories (e.g. "Swiggy" -> Food, "Uber" -> Travel, "Amazon" -> Shopping).
    - Staging table with bulk review and approval.
    - Pre-loaded sample bank statement CSV for immediate evaluation.

12. **Monthly & Category Reports**
    - Professional monthly financial statement sheet with user details, financial summaries, and category tables.
    - **One-Click PDF Export**: Generates styled PDF reports with OpenPDF.
    - Print-ready format.
    - Category deep-dive report for focused analysis.

13. **Profile & Settings**
    - Profile update and currency selector (₹ INR default, $, €, £).
    - Password change with validation.
    - Configurable notification switches.

---

## 🛠️ Technology Stack

- **Backend**: Java 17, Spring Boot 3.2, Spring MVC, Spring Data JPA, Spring Security, BCrypt.
- **Frontend**: HTML5, CSS3, JavaScript (ES6+), Bootstrap 5.3, Chart.js 4.4, Font Awesome 6.
- **Database**:
  - **MySQL 8** supported natively (`application-mysql.properties`).
  - **H2 Embedded Persistent Database** enabled by default for zero-friction evaluation without requiring external database server installation.
- **PDF & Document Processing**: OpenPDF, Apache Commons CSV, Apache PDFBox.

---

## 🚀 Quick Start Guide

### 1. Launch Application

Double-click `run.bat` or run in PowerShell:

```powershell
.\run.ps1
```

Or using Maven directly:

```powershell
$env:JAVA_HOME = "C:\Users\sniper\tools\jdk-17.0.12+7"
& "C:\Users\sniper\tools\apache-maven-3.9.9\bin\mvn.cmd" spring-boot:run
```

### 2. Open Application in Browser

Navigate to:
[http://localhost:8080](http://localhost:8080)

### 3. Demo Credentials

Click the **"Auto-Fill Demo Credentials"** button or enter:
- **Email**: `demo@expensetracker.com`
- **Password**: `Password123`

The system automatically initializes realistic sample transactions, monthly budgets, smart alerts, categories, and sample receipts on initial startup!

---

## 💾 Running with MySQL

To use a dedicated MySQL server:

1. Create a MySQL database:
   ```sql
   CREATE DATABASE expensetracker_db;
   ```
2. Update database credentials in `src/main/resources/application-mysql.properties` if needed (default: root/root).
3. Start the application with the `mysql` profile:
   ```powershell
   & "C:\Users\sniper\tools\apache-maven-3.9.9\bin\mvn.cmd" spring-boot:run -Dspring-boot.run.profiles=mysql
   ```

---

## 📁 Project Architecture

```
com.expensetracker/
├── ExpenseTrackerApplication.java  # Main application entry point
├── controller/                     # REST API Controllers (Auth, Dashboard, Tx, Budget, etc.)
├── service/                        # Business logic, OCR, Bank parser, PDF generator, Suggestions
├── repository/                     # Spring Data JPA repositories
├── model/                          # JPA Entities (User, Transaction, Category, Budget, Alert, etc.)
├── dto/                            # API request and response data transfer objects
├── security/                       # Spring Security configuration and UserDetails
├── exception/                      # Global exception handler
└── static/
    ├── index.html                  # Single-Page Application master layout
    ├── css/styles.css              # Custom financial design system & responsive styling
    ├── js/api.js                   # REST API client
    ├── js/app.js                   # Frontend controller and Chart.js manager
    └── samples/                    # Demo bank statements and receipt images
```
