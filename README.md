# 📊 Stock Technical Analysis & Data Engineering Pipeline

## 📌 Project Overview

This project implements an end-to-end **Stock Technical Analysis System** using **Python, MySQL, SQLAlchemy, and Matplotlib**.

The system processes raw stock market CSV data, applies business validation rules, stores cleaned data in a relational database, performs analytical SQL queries, and generates a multi-panel dashboard for financial insights.

The objective is to transform dirty financial data into structured, validated, and analytically useful insights.

---

## 🎯 Problem Statement

Given raw historical stock data (OHLC format), perform:

### 🔹 Technical Analysis

- Plot daily closing price trends per stock  
- Identify the highest volatility stock  
- Analyze volume vs price movement correlation  
- Compute 7-day and 30-day moving averages  

---

### 🔹 Business Rules Implementation

#### 1️⃣ Missing Value Treatment

- `close_price` → replace with median per stock  
- `volume` → replace with 0  
- `high_price` → replace with `max(open_price, close_price)`  
- `low_price` → replace with `min(open_price, close_price)`  

#### 2️⃣ Price Sanity Validation

- `high_price ≥ open_price AND close_price`  
- `low_price ≤ open_price AND close_price`  
- Auto-correct if violated  

#### 3️⃣ Trend Classification

- `daily_return > 0` → **UP**  
- `daily_return < 0` → **DOWN**  
- `daily_return = 0` → **NO_CHANGE**

---

### 🔹 Business Insights Required

- Best performing stock by average return  
- Days with abnormal volume spikes  
- UP vs DOWN trend ratio per company  

---

## 🏗 System Architecture

Raw CSV Files
↓
Python ETL (Pandas, NumPy)
↓
Data Cleaning & Business Rule Enforcement
↓
MySQL Database (Structured Storage)
↓
SQL Analytics (Window Functions & Aggregations)
↓
Matplotlib Multi-Panel Dashboard



---

## 🛠 Tech Stack

| Technology     | Purpose |
|---------------|----------|
| Python        | Core programming |
| Pandas        | Data cleaning & transformation |
| NumPy         | Numerical computation |
| SQLAlchemy    | Database integration |
| MySQL         | Structured data storage |
| SQL           | Analytical queries |
| Matplotlib    | Data visualization |
| Git           | Version control |

---

## 🧹 Data Cleaning & ETL

### ✔ Duplicate Removal  
Ensured unique trading records.

### ✔ Missing Value Handling  

- Median imputation for `close_price` (per stock)  
- Volume replaced with `0`  
- Logical reconstruction of `high_price` and `low_price`  

### ✔ Price Integrity Enforcement  

Ensured financial validity:

- `high_price` always ≥ open & close  
- `low_price` always ≤ open & close  

### ✔ Feature Engineering  

Calculated:

- Daily return (percentage change)  
- Trend classification (UP/DOWN/NO_CHANGE)

---

## 📊 Analytical Metrics Implemented

### 1️⃣ Daily Return

\[
Return = \frac{P_t - P_{t-1}}{P_{t-1}}
\]

Used for:

- Volatility calculation  
- Trend classification  
- Performance comparison  

---

### 2️⃣ Volatility

Calculated as:

\[
Volatility = Standard\ Deviation\ of\ Daily\ Returns
\]

Used to measure stock risk.

---

### 3️⃣ Moving Averages

- 7-day moving average  
- 30-day moving average  

Implemented using **SQL window functions**.

---

### 4️⃣ Volume–Price Correlation

Manually implemented **Pearson correlation formula in SQL** to measure the relationship between trading volume and price movement.

---

## 📈 Dashboard Components

The final dashboard includes:

- 📉 Closing Price Trend (Multi-line time series)  
- 📊 Volatility Comparison (Bar chart with values)  
- 📦 Volume Distribution (Histogram)  
- 📊 Trend Distribution (Grouped bar chart)  

The dashboard provides a complete descriptive analysis of stock performance, risk, and behavior.

---

## 📌 Key Insights Generated

- Identified highest volatility stock (highest risk)  
- Compared stock growth patterns  
- Measured trading activity behavior  
- Analyzed bullish vs bearish days  
- Evaluated average stock performance  

---

## 🧠 What This Project Demonstrates

- End-to-end ETL pipeline design  
- Business rule enforcement in financial data  
- Advanced SQL (`GROUP BY`, `STDDEV`, window functions)  
- Time-series financial analysis  
- Data validation logic  
- Dashboard visualization design  
- Structured system architecture thinking  
