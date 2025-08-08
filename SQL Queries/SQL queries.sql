-- 1. Select all records from Customers
SELECT * FROM Customers;

-- 2. Order orders by Price (highest first)
SELECT * FROM Orders
ORDER BY Price DESC;

-- 3. Group by ProductCategory and calculate total, avg, max, min price
SELECT ProductCategory,
       COUNT(*) AS TotalOrders,
       SUM(Price) AS TotalSales,
       AVG(Price) AS AvgPrice,
       MAX(Price) AS MaxPrice,
       MIN(Price) AS MinPrice
FROM Orders
GROUP BY ProductCategory;

-- 4. Inner join Customers and Orders on CustomerID
SELECT c.CustomerName, o.ProductName, o.Price
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 5. Left join to find customers with or without orders
SELECT c.CustomerName, o.OrderID
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 6. Get distinct states from Customers
SELECT DISTINCT State FROM Customers;

-- 7. Orders with ProductCategory in specific list
SELECT * FROM Orders
WHERE ProductCategory IN ('Books', 'Electronics');

-- 8. Orders with Price between 100 and 500
SELECT * FROM Orders
WHERE Price BETWEEN 100 AND 500;

-- 9. Top 5 expensive orders
SELECT TOP 5 * 
FROM Orders 
ORDER BY Price DESC;

-- 10. Check for customers with missing state information
SELECT * FROM Customers
WHERE State IS NULL;