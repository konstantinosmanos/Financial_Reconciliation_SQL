-- Query 1: Find Orders Without Payments
-- Use Case: Helps identify missing payments
SELECT o.OrderID, o.CustomerID, o.OrderDate, o.TotalAmount, o.Country
FROM orders o
LEFT JOIN payments p ON o.OrderID = p.OrderID
WHERE p.OrderID IS NULL;
