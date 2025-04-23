# sql-orders-analysis

# 📊 Delivery Order Failure Analysis

## Overview
This project explores the reasons behind failed delivery orders, using data analysis and visualization to uncover patterns in cancellations, system rejections, and geographic impact.

The goal is to help improve delivery efficiency by understanding **when**, **why**, and **where** failures most commonly occur.

---

## 📁 Data Sources

Two datasets were used:
- `data_orders.csv` — order details including timestamps, coordinates, status, and cancellation timing.
- `data_offers.csv` — mapping of offers made per order.

---

## 🔍 Key Analyses

1. **Failure Categorization**
   - Cancelled before driver assignment
   - Cancelled after driver assignment
   - System rejections (no driver assigned)

2. **Hourly Failure Trends**
   - Distribution of failed orders by hour
   - Peak failure times

3. **Cancellation Timing**
   - Average time to cancellation with/without a driver
   - Outlier removal for cleaner insights

4. **ETA Distribution**
   - How expected time of arrival (ETA) changes by hour

5. **📍 Geospatial Analysis (Bonus)**
   - Mapped orders using H3 hex bins (resolution 8)
   - Identified how many hexes cover 80% of all orders
   - Visualized failure density with Folium

---

## 🛠️ Tools & Technologies

- **Python**: `pandas`, `seaborn`, `matplotlib`, `folium`, `h3`
- **SQL**: Used for data filtering, categorization, and aggregation
- **Jupyter Notebook**: For iterative analysis and visual storytelling

---

## 📌 Key Insights

- Most cancellations occur **before driver assignment**
- Peak failures often happen during **high-demand hours**
- Certain locations consistently show higher failure rates
- ETA and cancellation behavior vary significantly across the day

---

## 📎 How to Run

1. Clone this repo
2. Place `data_orders.csv` and `data_offers.csv` in a `/data` directory
3. Run the Jupyter notebook or Python script step-by-step


