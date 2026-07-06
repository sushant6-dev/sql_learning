# /*

```
GROUP BY Clause

1. The GROUP BY clause is used to group rows that have
   the same values in one or more columns.
2. It is commonly used with aggregate functions such as:
	- SUM()
	- AVG()
	- COUNT()
	- MIN()
	- MAX()
3. Every non-aggregated column in the SELECT statement
   should be included in the GROUP BY clause.
```

================================================================================================
*/

-- Find the total score for each country.

SELECT
country AS Country,
SUM(score) AS Total_Score
FROM customers
GROUP BY country;

-- Find the total number of customers and total score
-- for each country.

SELECT
country AS Country,
COUNT(id) AS Total_Customers,
SUM(score) AS Total_Score
FROM customers
GROUP BY country;
