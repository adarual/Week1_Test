--filtering
--EX 1 

--task 1
SELECT ProductID, ProductName,
CategoryID, Discontinued, UnitPrice
FROM Products
--filter to not discontinued
WHERE Discontinued = 0

--task 2 
SELECT ProductID, ProductName,
CategoryID, Discontinued, UnitPrice
FROM Products
--filter to not discontinued
WHERE Discontinued = 0 AND CategoryID = 1

--task 3
SELECT ProductID, ProductName,
CategoryID, Discontinued, UnitPrice
FROM Products
--filter to not discontinued
WHERE Discontinued = 0 AND CategoryID = 1 AND UnitPrice >= 40



--EX 2

--task 1
USE Northwind
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID = 'ALFKI' OR CustomerID = 'ERNSH'
OR CustomerID = 'SIMOB'


--task 2
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE (CustomerID = 'ALFKI' OR CustomerID = 'ERNSH' 
OR CustomerID = 'SIMOB')
AND OrderDate >= '1997-08-31'


--task 3 
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID IN ('ALFKI', 'ERNSH', 'SIMOB') 
AND OrderDate BETWEEN '19970801' AND '19970831'


--EX 3
--task 1
USE Northwind
SELECT CustomerID, CompanyName, ContactName, ContactTitle, Phone
FROM Customers
WHERE ContactTitle LIKE 'sales%'

--task 2
SELECT CustomerID, CompanyName, ContactTitle, Phone
FROM Customers
WHERE ContactTitle LIKE '%sales%'


--EX 4
SELECT CustomerID, CompanyName, ContactTitle, Phone
FROM Customers
WHERE Fax IS NULL

--EX 5
SELECT ProductID,
ProductName,
UnitPrice,
UnitsInStock,
UnitsOnOrdeR, 
UnitPrice * UnitsInStock AS CurrentStockValue, 
(UnitsInStock + UnitsOnOrder) * UnitPrice AS FutureStockValue
FROM Products
WHERE (UnitsInStock + UnitsOnOrder) * UnitPrice > 2000