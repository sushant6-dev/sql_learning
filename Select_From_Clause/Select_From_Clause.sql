# /*

```
SELECT Statement

1. The SELECT statement is used to retrieve data from a table.
2. Using * (asterisk) retrieves all columns from the table.
3. Specifying column names retrieves only those columns.

FROM Clause

1. The FROM clause specifies the data source for the query.
2. It identifies the table from which data will be retrieved.
```

================================================================================================
*/

-- Retrieve all columns from the Customers table.

SELECT *
FROM customers;

-- Retrieve first name, country, and score from the Customers table.

SELECT
first_name,
country,
score
FROM customers;
