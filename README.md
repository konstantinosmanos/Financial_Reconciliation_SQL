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
```bash
📂 Financial_Reconciliation_SQL
│-- 📂 datasets          # Contains simulated CSV datasets
│-- 📂 images            # Contains visualized charts
│-- 📂 sql-python        # SQL queries & Python scripts
│-- 📄 README.md         # Project documentation (this file)

## How the Dataset Was Created  
Since we did not use a real-world dataset, we **simulated** realistic financial transactions using Python.  
The dataset includes:  

✔️ **Orders Data** (`orders.csv`) → Contains order details, customers, amounts, and order dates.  
✔️ **Payments Data** (`payments.csv`) → Includes payment transactions and methods.  
✔️ **Invoices Data** (`invoices.csv`) → Tracks invoices issued, dates, and payment status.  

###  **1️⃣ Generating Simulated Data**
We used Python’s `pandas` and `numpy` libraries to create **randomized financial transactions**.

📄 **Dataset Generation Notebook:** [`data_creation.ipynb`](sql-python/data_creation.ipynb)
