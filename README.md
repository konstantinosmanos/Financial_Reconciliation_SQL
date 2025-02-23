# SQL Financial Reconciliation Project  

##  Overview  
This project is designed to analyze **financial transactions** using **PostgreSQL** and **Python**.  
It focuses on **order-to-cash reconciliation**, **missing payments**, **unpaid invoices**, and **revenue trends**.  

✅ **Key Features:**  
- **SQL Queries** for financial analysis  
- **Python Visualizations** using Seaborn & Matplotlib  
- **Simulated Datasets** to replicate real-world financial data  

---

## 📂 Folder Structure  

📂 Financial_Reconciliation_SQL
│-- 📂 datasets          # Contains simulated CSV datasets
│-- 📂 images            # Contains visualized charts
│-- 📂 sql-python        # SQL queries & Python scripts


## How the Dataset Was Created  
Since we did not use a real-world dataset, we **simulated** realistic financial transactions using Python.  
The dataset includes:  


###  **1️⃣ Generating Simulated Data**
We used Python’s `pandas` and `numpy` libraries to create **randomized financial transactions**.

📄 **Dataset Generation Notebook:** [`data_creation.ipynb`](sql-python/data_creation.ipynb)

### 2️⃣ Where to Find the Data  
The datasets are stored in the `datasets/` folder. Each file contains different financial transaction data:

| Dataset | File | Description |
|---------|------|-------------|
| 📌 **Orders** | [`datasets/orders.csv`](datasets/orders.csv) | Contains customer order details (Order ID, Customer ID, Order Date, Total Amount, Country). |
| 📌 **Payments** | [`datasets/payments.csv`](datasets/payments.csv) | Tracks payment transactions (Payment ID, Order ID, Payment Date, Payment Method). |
| 📌 **Invoices** | [`datasets/invoices.csv`](datasets/invoices.csv) | Tracks invoices issued, including their status (Invoice ID, Order ID, Invoice Date, Status). |


##  Key SQL Queries  

Below are the main SQL queries included in this project:

1️⃣ **Find Orders Without Payments** – Identifies missing payments  
2️⃣ **Detect Partially Paid Orders** – Flags underpaid transactions  
3️⃣ **Analyze Revenue by Country** – Finds top revenue sources  
4️⃣ **Track Monthly Revenue Trends** – Shows revenue growth  
5️⃣ **Identify Most Popular Payment Methods**  

📄 **Full SQL Queries:** [`sql_project_queries.sql`](sql-python/sql_project_queries.sql)  

## Data Visualizations  

Below are some **key visualizations** generated from SQL query results:

| Visualization | Description |
|--------------|-------------|
| 📌 **Total Revenue by Country** | Bar chart showing top revenue sources |
| 📌 **Orders Without Payments by Country** | Identifies missing payments |
| 📌 **Monthly Revenue Trend** | Tracks revenue over time |
| 📌 **Most Popular Payment Methods** | Compares payment method usage |

📄 **View Visualizations Notebook:** [`visualizations.ipynb`](sql-python/visualizations.ipynb)

### Example Charts:

#### **Total Revenue by Country**  
![Total Revenue](images/Total_revenue_by_country.png)

#### **Orders Without Payments**  
![Orders Without Payments](images/Orders_without_payments_by_country.png)

#### **Monthly Revenue Trend**  
![Revenue Trend](images/Monthly_revenue_trend.png)

#### **Most Popular Payment Methods**  
![Payment Methods](images/most_popular_payment_methods.png)



