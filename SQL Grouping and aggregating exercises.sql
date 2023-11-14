--- AGREGATE CALCULATION EXAMPLES:

--count(*) - How many territories we have?
SELECT COUNT(*) AS noofterritories
FROM EmployeeTerritories
--count (expre) - How many region names are there?
SELECT COUNT(regiondescription)
FROM Region
--avg() - Whats the avg freight for customer 6?
SELECT AVG(Freight) AS avgfreight
FROM Orders
WHERE EmployeeID = 6
--sum() - How much qty total has been ordered?
SELECT SUM(Quantity) AS totqty
FROM [Order Details]
--min() - Whats the cheapest thing?
SELECT MIN(UnitPrice)
FROM Products



--GROUP BY EXAMPLES

--Whats the min unit price per supplierID and categoryID?
SELECT SupplierID, CategoryID,
MIN(UnitPrice) AS CheapestProduct,
COUNT(ProductID) AS NoofProducts
FROM Products
GROUP BY SupplierID, CategoryID
ORDER BY SupplierID

--Total freight shipped to each country?
SELECT
SUM(freight) AS TotalShippedWeight, ShipCountry
FROM Orders
WHERE YEAR(orderdate) = 1997
GROUP BY ShipCountry
HAVING SUM(freight) <=1000
ORDER BY 1 DESC




--EX 1
--task 1
SELECT COUNT(*) AS NumberOfOrders
FROM Orders

--task 2
SELECT COUNT(*) AS NumberOfOrders,
MIN(OrderDate) AS EarliestOrder,
MAX(OrderDate) AS LatestOrder
FROM Orders

--task 3
SELECT COUNT(*) AS NumberOfOrders,
MIN(OrderDate) AS EarliestOrder,
MAX(OrderDate) AS LatestOrder
FROM Orders
WHERE EmployeeID = 1

--task 3 converting date format:
SELECT COUNT(*) AS NumberOfOrders,
MIN(OrderDate) AS EarliestOrder,
CONVERT (nvarchar, MAX(OrderDate), 107) AS LatestOrder
FROM Orders
WHERE EmployeeID = 1 



--EX 2
--task 1
SELECT 
COUNT(OrderID) AS NumberOfOrders
FROM Orders

--task 2
SELECT CustomerID,
COUNT(OrderID) AS NumberOfOrders
FROM Orders
GROUP BY CustomerID

--task 3
SELECT CustomerID,
COUNT(OrderID) AS NumberOfOrders
FROM Orders
GROUP BY CustomerID
ORDER BY NumberOfOrders DESC


--EX 3
--task 1
SELECT ProductID, SUM(Quantity * UnitPrice) AS TotalValue
FROM [Order Details]
GROUP BY ProductID
--task 2
SELECT ProductID, SUM(Quantity * UnitPrice) AS TotalValue
FROM [Order Details]
GROUP BY ProductID
ORDER BY TotalValue DESC
--task 3 
SELECT ProductID, SUM(Quantity * UnitPrice) AS TotalValue
FROM [Order Details]
GROUP BY ProductID
HAVING SUM(Quantity * UnitPrice) <=5000
ORDER BY TotalValue DESC



