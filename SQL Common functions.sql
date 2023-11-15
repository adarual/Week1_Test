--COMMON FUNCTIONS

--TEXT FUNCTIONS LEFT/RIGHT EXAMPLE
SELECT LastName, LEFT (LastName,3)
FROM Employees



--DATE FUNCTIONS DATEDIFF EXAMPLE 
--What is the lag between shipped and required? 
select OrderID
,OrderDate
,RequiredDate
,ShippedDate
,DATEDIFF(day, ShippedDate, RequiredDate) AS lag
From Orders
WHERE ShippedDate IS NOT NULL
ORDER BY lag



