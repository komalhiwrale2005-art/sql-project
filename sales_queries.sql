/* 1 .List Customers from different countries */

SELECT FirstName, LastName, Country FROM Customers;

/* 2. Total sales by category */

SELECT P.Category, SUM(OD.Quantity * OD.UnitPrice) AS TotalSales
FROM Products P
JOIN OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY P.Category;

/* 3. Customer orders with detail counts */

SELECT C.FirstName, C.LastName, COUNT(O.OrderID) AS OrdersCount
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID;


/* 4. Products low on stock (less than 50) */

SELECT ProductName, StockQuantity FROM Products WHERE StockQuantity < 50;


/* 5. Find customers who placed orders worth more than $50 */

SELECT C.FirstName, C.LastName, SUM(O.TotalAmount) AS TotalSpent
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID
HAVING TotalSpent > 50;

/* 6. List products that have never been ordered */

SELECT ProductName 
FROM Products P
LEFT JOIN OrderDetails OD ON P.ProductID = OD.ProductID
WHERE OD.OrderID IS NULL;

/* 7. Calculate average order value per customer */

SELECT CustomerID, AVG(TotalAmount) AS AvgOrderValue
FROM Orders
GROUP BY CustomerID;


/* 8. Get the most popular product by quantity sold */

SELECT P.ProductName, SUM(OD.Quantity) AS TotalSold
FROM Products P
JOIN OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductID
ORDER BY TotalSold DESC
LIMIT 1;

/* 9. Retrieve customers and their last order date */

SELECT C.FirstName, C.LastName, MAX(O.OrderDate) AS LastOrderDate
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID;

/* 10. Find the total revenue per month */

SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(TotalAmount) AS MonthlyRevenue
FROM Orders
GROUP BY Month
ORDER BY Month;

/* 11. Show stock status for products sorted by the lowest stock */

SELECT ProductName, StockQuantity
FROM Products
ORDER BY StockQuantity ASC;


/* 12. Get customers who ordered more than one category */

SELECT C.FirstName, C.LastName, COUNT(DISTINCT P.Category) AS CategoryCount
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY C.CustomerID
HAVING CategoryCount > 1;