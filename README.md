# Brazilian E-Commerce SQL Analysis (End-to-End Project)

## 📌 Project Overview
This project performs an **end-to-end SQL analysis** on the Brazilian E-Commerce (Olist) dataset to extract meaningful business insights related to sales performance, customer behavior, logistics efficiency, seller contribution, payment trends, and customer satisfaction.

The project simulates a **real-world data analyst workflow**, starting from raw data ingestion and schema design to advanced SQL analysis and business insights.

---

## 🎯 Business Objectives
- Analyze overall sales and revenue trends over time  
- Identify repeat vs one-time customers and customer lifetime value  
- Evaluate delivery performance and its impact on customer reviews  
- Determine top-performing product categories and sellers  
- Understand payment behavior and installment patterns  
- Apply advanced SQL techniques for deeper analytical insights  

---

## 🧰 Tools & Technologies
- **SQL** (MySQL / PostgreSQL compatible)
- **Advanced SQL** (CTEs, Window Functions, Ranking, Running Totals)
- **Git & GitHub** for version control

---

## 🗂️ Dataset Information
- **Source:** Kaggle – Olist Brazilian E-Commerce Dataset  
- **Time Period:** 2016 – 2018  
- **Records:** ~100,000 orders  
- **Nature:** Real commercial data (anonymized)

📎 Dataset link:  
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

> Note: Raw CSV files are not committed to this repository.  
> Please download the dataset from Kaggle and place all CSV files inside the `data/` folder before running the SQL scripts.

---

## 🗃️ Data Model (Tables Used)
The project uses **9 relational tables**, centered around the `orders` table:

- `customers`
- `orders`
- `order_items`
- `order_payments`
- `order_reviews`
- `products`
- `sellers`
- `product_category_name_translation`
- `geolocation` (optional / advanced)

---

## 📁 Project Structure
Brazilian-Ecommerce-SQL-Analysis
│
├── data/ # Raw CSV files (not committed)
├── schema/ # Database & table creation scripts
│ └── create_tables.sql
├── analysis/ # SQL analysis scripts
│ ├── 01_sales_analysis.sql
│ ├── 02_customer_analysis.sql
│ ├── 03_delivery_analysis.sql
│ ├── 04_product_analysis.sql
│ ├── 05_seller_analysis.sql
│ ├── 06_payment_analysis.sql
│ ├── 07_reviews_analysis.sql
│ └── 08_advanced_sql_analysis.sql
├── insights/ # Business insights & findings
│ └── business_insights.md
└── README.md



---

## 🔍 Key Analysis Performed
- Sales & revenue trend analysis  
- Customer segmentation and repeat purchase analysis  
- Delivery delay and logistics performance analysis  
- Product category and seller performance analysis  
- Payment method and installment behavior analysis  
- Customer satisfaction and review impact analysis  

---

## 🚀 Advanced SQL Techniques Used
- Common Table Expressions (CTEs)  
- Window Functions (`RANK`, `AVG() OVER`, `SUM() OVER`)  
- Running totals & cumulative metrics  
- Customer Lifetime Value (CLV) calculation  
- Seller benchmarking against average performance  
- Pareto (80/20) analysis for revenue contribution  

---

## 📊 Key Business Insights
- Late deliveries have a strong negative impact on customer ratings  
- A small percentage of sellers contribute the majority of revenue  
- Repeat customers generate significantly higher lifetime value  
- Credit cards are the most preferred payment method  
- Certain product categories drive high revenue despite lower volume  

---

## 🧠 What This Project Demonstrates
- Strong SQL fundamentals and advanced querying skills  
- Ability to translate raw data into business insights  
- Experience with real-world, multi-table relational datasets  
- Industry-oriented project structure and documentation  

---

## 👤 Author
**Syamprasad Bairapuneni**  
Aspiring Data Analyst | SQL | Data Analytics  

