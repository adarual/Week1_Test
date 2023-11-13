SELECT * 
FROM Orders
WHERE EmployeeID > 5
AND EmployeeID <> 7
AND EmployeeID != 8

--more efficient way:
SELECT * 
FROM Orders
WHERE EmployeeID IN (6,9)



SELECT *
FROM Orders
WHERE CustomerID = 'ERNSH'


SELECT *
FROM Orders
WHERE ShipCountry LIKE '%U%'


SELECT 
	ProductID,
	ProductName,
	UnitsInStock + UnitsOnOrder AS FutureStock
FROM
	Products
WHERE (UnitsInStock + UnitsOnOrder) < 100



