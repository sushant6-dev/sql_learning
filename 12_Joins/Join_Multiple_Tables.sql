SELECT 
	o.OrderID ,
	c.FirstName + ' ' + c.LastName AS Customer_Name,
	Product AS Product_Name,
	o.Sales,
	p.Price AS Product_Price,
	e.FirstName + ' ' + e.LastName AS Sales_Person_Name
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON c.CustomerID = o.CustomerID
LEFT JOIN Sales.Products AS p
ON p.ProductID = o.ProductID
LEFT JOIN Sales.Employees AS e
ON e.EmployeeID = o.SalesPersonID
