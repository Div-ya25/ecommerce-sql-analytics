# E-Commerce Sales & Customer Analytics

## 📌 Project Overview

This is my first SQL portfolio project, developed using **MySQL** to analyze e-commerce sales and customer data.

The project contains **26 business questions** covering SQL concepts from basic queries to advanced SQL techniques.

## 🗄️ Database Schema

The database contains 5 tables:

- Customers
- Orders
- Sellers
- Products
- Payments

### ER Diagram

```mermaid
erDiagram
    CUSTOMERS ||--o{ ORDERS : places
    ORDERS ||--o| PAYMENTS : has
    SELLERS ||--o{ PRODUCTS : sells

    CUSTOMERS {
        INT customer_id PK
        VARCHAR customer_name
        VARCHAR city
        DATE signup_date
    }

    ORDERS {
        INT order_id PK
        INT customer_id FK
        DATE order_date
        VARCHAR status
        DECIMAL amount
    }

    SELLERS {
        INT seller_id PK
        VARCHAR seller_name
        VARCHAR city
        DECIMAL rating
    }

    PRODUCTS {
        INT product_id PK
        VARCHAR product_name
        VARCHAR category
        DECIMAL price
        INT seller_id FK
    }

    PAYMENTS {
        INT payment_id PK
        INT order_id FK
        VARCHAR payment_type
🛠️ Tools Used
MySQL
SQL
GitHub
📊 SQL Concepts Used
SELECT
WHERE
ORDER BY
LIMIT
Aggregate Functions
GROUP BY
HAVING
INNER JOIN
CASE Statements
Subqueries
CTEs
Window Functions
RANK()
ROW_NUMBER()
Views
Stored Procedures
🔎 Business Analysis

The project answers 26 business questions related to:

Customer analysis
Order analysis
Revenue analysis
Customer spending
Order status
City-wise performance
Monthly revenue
Customer ranking
First and recent orders
📈 Monthly Sales Summary

A SQL View named monthly_sales_summary was created to analyze:

Total orders
Total revenue
Average order value

🎯 What I Learned
This project helped me strengthen my SQL skills and understand how SQL can be used to solve practical business problems and perform data analysis.

👩‍💻 Author
Divya Sree
Aspiring Data Analyst | SQL | Python | Data Analytics

🙏 Acknowledgement
This project was completed as part of my Data Analytics learning journey at Luminar Technolab.
        DATE payment_date
        DECIMAL payment_amount
    }

### One important thing

The diagram above represents your **actual current database relationships**:

```text
Customers → Orders → Payments

Sellers → Products
