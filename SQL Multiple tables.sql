--- NUMBER OF ORDERS PER EMPLOYEE:
--Start with the ID (groupby)
--Add join in --> Name
SELECT 
Employees.FirstName,
Employees.LastName,
COUNT(Orders.orderID) AS NumberOfOrders
FROM Orders
JOIN Employees
ON orders.EmployeeID = Employees.EmployeeID
GROUP BY employees.FirstName, employees.LastName



--LEFT JOIN EXAMPLE:
SELECT OrderID, OrderDate, CompanyName
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID

--Same exmaple reducing time/words:
SELECT OrderID, OrderDate, CompanyName
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.CustomerID = o.CustomerID



--FULL JOIN EXAMPLE
SELECT OrderID, OrderDate, CompanyName
FROM Orders AS o
FULL JOIN Customers AS c
ON c.CustomerID = o.CustomerID
FULL JOIN Employees AS e
ON o.EmployeeID = e.EmployeeID



--Employee territory to order quantity
SELECT *
FROM Territories AS t
JOIN EmployeeTerritories AS et
ON t.TerritoryID = et.TerritoryID
JOIN Employees e
ON et.EmployeeID = e.EmployeeID
JOIN Orders AS o
ON e.EmployeeID = o.EmployeeID




--EX 1
--task 1
SELECT 
c.CustomerID, 
c.CompanyName, 
c.ContactName, 
o.OrderID, 
o.OrderDate
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID 

--task 2
SELECT 
c.CustomerID, 
c.CompanyName, 
c.ContactName, 
o.OrderID, 
o.OrderDate
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID 
WHERE c.Country = 'UK'
order by c.CompanyName, o.OrderDate

--task 3
SELECT 
c.CustomerID, 
c.CompanyName, 
c.ContactName, 
o.OrderID, 
o.OrderDate,
od.ProductID,
p.ProductName, 
od.Quantity
FROM Customers AS c
JOIN Orders AS o
ON c.CustomerID = o.CustomerID 
JOIN [Order Details] AS od
ON o.OrderID = od.OrderID
JOIN Products AS p
ON od.ProductID = p.ProductID
WHERE c.Country = 'UK'
order by c.CompanyName, o.OrderDate



--EX 2
--task 1
SELECT
COUNT (*) 
FROM Customers

--task 2
SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders
FROM Customers AS c
JOIN Orders AS o
ON o.CustomerID = c.CustomerID
GROUP BY C.CompanyName

--task 3
SELECT c.CompanyName, COUNT(o.OrderID) AS NumOrders,
MIN(o.OrderDate) AS MinDate
FROM Orders AS o
RIGHT OUTER JOIN Customers AS c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName
ORDER BY NumOrders

