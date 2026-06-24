# Ecommerce-Sales-Analytics-Dashboard
## Project Overview

This project demonstrates an end-to-end Data Analytics workflow using **MySQL, SQL, Power BI, and DAX** to analyze e-commerce sales performance.

The dashboard provides insights into revenue trends, customer behavior, product performance, payment methods, and regional sales distribution. Interactive filters enable dynamic analysis across multiple business dimensions.

---

## Tools & Technologies

* MySQL 8.0
* SQL
* Power BI Desktop
* DAX (Data Analysis Expressions)
* Microsoft Excel (Data Preparation)

---

## Dataset Information

The dataset contains e-commerce transaction records including:

* Order ID
* Order Date
* Product Name
* Category
* Region
* Customer Type
* Payment Method
* Quantity
* Total Sales

Total Records: **1,497+ Transactions**

---

## Business Objectives

The project aims to answer the following business questions:

* What is the total revenue generated?
* Which products generate the highest revenue?
* Which regions contribute the most sales?
* How do customer types impact revenue?
* Which payment methods are preferred?
* What are the monthly revenue trends?

---

## SQL Analysis

The following KPIs were calculated using SQL:

### Total Revenue

```sql
SELECT SUM(total_sales) AS total_revenue
FROM sales_data;
```

### Total Orders

```sql
SELECT COUNT(order_id) AS total_orders
FROM sales_data;
```

### Revenue by Category

```sql
SELECT category,
       SUM(total_sales) AS revenue
FROM sales_data
GROUP BY category;
```

### Top Products by Revenue

```sql
SELECT product_name,
       SUM(total_sales) AS revenue
FROM sales_data
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;
```

---

## Power BI Dashboard Features

### KPI Cards

* Total Revenue
* Total Orders
* Total Quantity Sold
* Average Order Value

### Interactive Slicers

* Year
* Category
* Region

### Visualizations

* Revenue by Category
* Revenue by Region
* Revenue by Payment Method
* Revenue by Customer Type
* Monthly Revenue Trend
* Top 10 Products by Revenue

---

## DAX Measures

### Average Order Value

```DAX
Average Order Value =
DIVIDE(
    SUM(sales_data[Total_Sales]),
    COUNT(sales_data[Order_ID])
)
```

---

## Key Insights

* Electronics generated the highest revenue among all categories.
* Pune contributed the highest regional revenue.
* Card and UPI were the most frequently used payment methods.
* New customers generated the highest share of revenue.
* Laptop was the top-performing product by revenue.

---

## Dashboard Preview

Add dashboard screenshots inside the Screenshots folder and reference them here.

Example:

![Dashboard Screenshot]

---

## Project Structure

```text
Ecommerce-Sales-Analytics-Dashboard/
│
├── Dataset/
│   └── ecommerce_sales.csv
│
├── SQL/
│   └── ecommerce_sales_analysis.sql
│
├── PowerBI/
│   └── Ecommerce_Sales_Dashboard.pbix
│
├── Screenshots/
│   └── dashboard.png
│
└── README.md
```

---

## Author

**Sree Manish Dugyala**

* Data Analytics Enthusiast
* Skilled in SQL, Power BI, Excel, Python, and Data Visualization

LinkedIn:
http://www.linkedin.com/in/dugyalasreemanish
