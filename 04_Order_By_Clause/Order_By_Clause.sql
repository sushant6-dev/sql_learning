# /*

```
ORDER BY Clause

1. The ORDER BY clause is used to sort the result set.
2. Data can be sorted in:
	- ASC (Ascending Order) -> Lowest to Highest / A to Z
	- DESC (Descending Order) -> Highest to Lowest / Z to A
3. Sorting can be performed on:
	- Numeric columns
	- Text columns
	- Date columns
	- Multiple columns
```

================================================================================================
*/

-- Retrieve all customers and sort the results by the highest score first.

SELECT
*
FROM customers
ORDER BY score DESC;

/*
Retrieve all customers and sort the results
first by country (A to Z) and then by score
from highest to lowest within each country.
*/

SELECT
*
FROM customers
ORDER BY country ASC, score DESC;
