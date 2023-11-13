
--EX 1
--task 1
USE Northwind
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM Products
WHERE Discontinued = 0


--task 2
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM  Products
WHERE Discontinued = 0
ORDER BY CategoryID


--task 3
SELECT ProductID, ProductName, CategoryID, Discontinued, UnitPrice
FROM Products
WHERE Discontinued = 0
ORDER BY CategoryID, UnitPrice DESC


--EX 2
--task 1
SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder,
(UnitsInStock+UnitsOnOrder) * UnitPrice AS FUTURESTOCKVALUE
FROM Products 


--task 2
SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder,
(UnitsInStock+UnitsOnOrder) * UnitPrice AS FUTURESTOCKVALUE
FROM Products
ORDER BY FUTURESTOCKVALUE DESC 


--EX 3
--task 1
SELECT Country
FROM Customers


--task 2
SELECT DISTINCT
Country
FROM Customers


--EX 4
SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC


--EX 5
SELECT 
ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder,
UnitPrice * UnitsInStock AS CurrentStockValue,
(UnitsInStock + UnitsOnOrder) * UnitPrice AS FutureStockValue
FROM Products
ORDER BY CurrentStockValue DESC






---FREEFORM QUIZ
--HOW MANY STAFF LIVE IN CITIES WHICH START WITH A OR B OR C?
SELECT *
FROM Employees
WHERE left(city,1) in('A','B','C')


---SELECT DISTINT
--THE CLUTCH CONTROL OF SQL

--LOOK AT THE UNIQUE SET OF CUSTOMERS
SELECT CustomerID, CompanyName
FROM Customers

--LOOK AT THE UNIQUE CUSTOMERS WHO PLACED ORDERS
SELECT DISTINCT  CustomerID
FROM Orders

--LOOK AT THE UNIQUE SET OF EMPLOYEES
SELECT EmployeeID, FirstName, LastName, Title
FROM Employees

--LOOK AT THE UNIQUE EMPLOYEES WHO PLACED ORDERS
SELECT DISTINCT  EmployeeID
FROM Orders
