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



