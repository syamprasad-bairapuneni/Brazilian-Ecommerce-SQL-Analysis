# Brazilian E-Commerce SQL Analysis

An end-to-end SQL analysis of the Olist Brazilian e-commerce dataset (2016–2018, about 100,000 orders). It covers sales trends, customer repeat behavior, delivery performance and reviews, product categories, sellers, and payments.

## Tools
- **SQLite** (queries use SQLite date functions)
- **DB Browser for SQLite** for importing the data and running queries
- **Git & GitHub** for version control

## Dataset
- **Source:** [Kaggle – Olist Brazilian E-Commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- **Raw CSVs are not committed.** Download them and place them in the `data/` folder.

## Project Structure
Brazilian-Ecommerce-SQL-Analysis/
├── data/ # Raw CSVs (not committed)
├── schema/
│ └── create_tables.sql # MySQL table definitions (reference only)
├── analysis/
│ ├── 01_sales_analysis.sql
│ ├── 02_customer_analysis.sql
│ ├── 03_delivery_analysis.sql
│ ├── 04_product_analysis.sql
│ ├── 05_seller_analysis.sql
│ ├── 06_payment_analysis.sql
│ ├── 07_reviews_analysis.sql
│ ├── 08_advanced_sql_analysis.sql
│ └── 09_customer_checks.sql
├── insights/
│ └── business_insights.md
└── README.md


## How to Run (SQLite)
1. Download the Kaggle dataset and unzip it into `data/`.
2. In DB Browser for SQLite, create a new database (for example, `data/olist.db`).
3. Import each CSV with **File → Import → Table from CSV file**. Tick **Column names in first line** and set the table name:

   | CSV file | Table name |
   |---|---|
   | olist_customers_dataset.csv | customers |
   | olist_orders_dataset.csv | orders |
   | olist_order_items_dataset.csv | order_items |
   | olist_order_payments_dataset.csv | payments |
   | olist_order_reviews_dataset.csv | reviews |
   | olist_products_dataset.csv | products |
   | olist_sellers_dataset.csv | sellers |
   | product_category_name_translation.csv | category_translation |

4. Run the queries in `analysis/`. Select one query and press Ctrl+Enter to run just that query.

Note: `schema/create_tables.sql` is written for MySQL. For SQLite, use the import steps above instead.

## Key Analysis
- Sales and monthly revenue trends
- Repeat vs one-time customers and lifetime value (per unique customer)
- Delivery timeliness and its link to review scores
- Product category performance (English names, by volume and revenue)
- Payment methods and installment behavior
- Seller benchmarking against average revenue

## Key Findings
- **Late deliveries hurt reviews.** About 8% of delivered orders (7,701 of 96,359) arrived after the estimated date. They averaged a 2.57 review score, against 4.29 for on-time orders.
- **Repeat customers are rare but high-value.** About 3% of customers ordered more than once (2,913 of 95,420 customers with priced orders). They averaged 262.03 in lifetime revenue, against 138.67 for one-time customers.
- **High-price categories out-earn high-volume ones.** Watches & gifts ranks 7th by items sold but 2nd by revenue, at about 201 per item.

See [`insights/business_insights.md`](insights/business_insights.md) for caveats.

## SQL Techniques
- CTEs (`WITH`)
- Window functions (`SUM() OVER`, `AVG() OVER`)
- Running totals
- Multi-table joins
- Per-customer aggregation using `customer_unique_id`

## Author
**Syamprasad Bairapuneni**
Aspiring Data Analyst | SQL | Data Analytics