SELECT *
From ProductID, ProductName, 
    UnitInStock, UnitsOnOrder, 
	UnitsInStock + UnitsOnOrder AS FUTURESTOCK
From Products

SELECT FirstName AS GIVENNAME, --aliasing the colums
LastName AS FAMILYNAME,
FirstName + LastName AS FULLNAME
FROM Employees

/* 
this is a comment
or block of comments
*/
