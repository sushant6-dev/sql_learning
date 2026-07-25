-- From customers table, display first_name with country.

SELECT 
	FirstName,
	Country,
	CONCAT(FirstName, ' ' ,Country) name_country
FROM Sales.Customers
