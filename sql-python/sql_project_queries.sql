-- Query 1: SELECT – Retrieve All Orders
-- Shows all data from the orders table
SELECT * FROM orders;

-- Query 2: SELECT DISTINCT – Find Unique Countries in Orders
-- Returns a list of unique countries where orders were placed
SELECT DISTINCT country FROM orders;

-- Query 3:WHERE – Find Orders from Germany
-- Filters orders that were placed in Germany
SELECT * FROM orders
WHERE country = 'Germany';

-- Query 4:  LIMIT – Show Only the First 5 Orders
-- Retrieves only the first 5 rows of the orders table
SELECT * FROM orders
LIMIT 5;

-- Query 5:  IN Operator – Find Orders from Specific Countries
-- Finds all orders placed in the USA, UK, or France
SELECT * FROM orders
WHERE country IN ('USA', 'UK', 'France');

-- Query 6: Orders With Payment Details (INNER JOIN)
-- Finds orders that have been paid and includes payment details
SELECT o.OrderID, o.CustomerID, o.TotalAmount, p.PaymentDate, p.PaymentMethod
FROM orders o
INNER JOIN payments p ON o.OrderID = p.OrderID;

-- Query 7: Orders Without Payments (LEFT JOIN + WHERE NULL)
-- Identifies orders that have not received any payment
SELECT o.OrderID, o.CustomerID, o.TotalAmount
FROM orders o
LEFT JOIN payments p ON o.OrderID = p.OrderID
WHERE p.OrderID IS NULL;

-- Query 8: Unpaid Invoices (JOIN + WHERE Condition)
-- Finds all unpaid invoices along with order details
SELECT o.OrderID, o.CustomerID, i.InvoiceDate, i.Status
FROM orders o
JOIN invoices i ON o.OrderID = i.OrderID
WHERE i.Status = 'Unpaid';

-- Query 9: Orders With Partial Payments (Aggregated JOIN)
-- Finds orders where payment does not fully cover the total amount
SELECT o.OrderID, o.TotalAmount, 
       COALESCE(SUM(p.TotalAmount), 0) AS PaidAmount,
       (o.TotalAmount - COALESCE(SUM(p.TotalAmount), 0)) AS AmountDue
FROM orders o
LEFT JOIN payments p ON o.OrderID = p.OrderID
GROUP BY o.OrderID, o.TotalAmount
HAVING o.TotalAmount > COALESCE(SUM(p.TotalAmount), 0);

-- Query 10: Customers With More Than One Order (GROUP BY + HAVING)
-- Finds customers who have placed multiple orders
SELECT o.CustomerID, COUNT(o.OrderID) AS TotalOrders
FROM orders o
GROUP BY o.CustomerID
HAVING COUNT(o.OrderID) > 1;

-- Query 11: Countries With Highest Revenue (JOIN + GROUP BY)
-- Shows revenue per country, sorted from highest to lowest
SELECT o.Country, SUM(p.TotalAmount) AS TotalRevenue
FROM orders o
JOIN payments p ON o.OrderID = p.OrderID
GROUP BY o.Country
ORDER BY TotalRevenue DESC;

-- Query 12: Find Customers Who Have an Invoice But No Payment (LEFT JOIN + WHERE NULL)
-- Finds invoices that exist but have no recorded payments
SELECT i.OrderID, i.CustomerID, i.TotalAmount, i.Status
FROM invoices i
LEFT JOIN payments p ON i.OrderID = p.OrderID
WHERE p.OrderID IS NULL;

-- Query 13: Highest Payment Per Customer (SUBQUERY)
-- Finds the highest single payment made by each customer
SELECT CustomerID, MAX(TotalAmount) AS HighestPayment
FROM payments
GROUP BY CustomerID;

-- Query 14: Total Revenue Per Month (DATE TRUNC + GROUP BY)
-- Calculates total revenue per month using invoices
SELECT DATE_TRUNC('month', i.InvoiceDate) AS Month, SUM(i.TotalAmount) AS TotalRevenue
FROM invoices i
GROUP BY Month
ORDER BY Month;

-- Query 15: Most Popular Payment Method (GROUP BY + COUNT)
-- Finds the most commonly used payment method
SELECT p.PaymentMethod, COUNT(*) AS UsageCount
FROM payments p
GROUP BY p.PaymentMethod
ORDER BY UsageCount DESC;
