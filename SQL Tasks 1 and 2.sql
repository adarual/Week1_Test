--EX 1

--task 1
SELECT * FROM Products

--task 2
SELECT ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder 
FROM Products

--task 3 now all look good try to separate your code so you can debug it 
SELECT ProductID, 
ProductName,
UnitPrice, 
UnitsInStock,
UnitsOnOrder,
UnitPrice * UnitsInstock AS CurrentStockValue,

(UnitsInStock + UnitsOnOrder) * UnitPrice AS FutureStockValue
FROM Products


--EX 2 On your screen now :)
SELECT 
FirstName + LastName AS FullName
FROM Employees



