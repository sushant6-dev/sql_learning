# /*

```
HAVING Clause

1. The HAVING clause is used to filter grouped or
   aggregated data.
2. It is typically used after the GROUP BY clause.
3. Unlike the WHERE clause, HAVING can be used with
   aggregate functions such as:
	- SUM()
	- AVG()
	- COUNT()
	- MIN()
	- MAX()
4. WHERE filters rows before grouping,
   while HAVING filters groups after aggregation.
```

================================================================================================
*/

-- Find the average score for each country,
-- considering only customers whose score is not 0.

SELECT
country AS Country,
AVG(score) AS Avg_Score
FROM customers
WHERE score != 0
GROUP BY country;

-- Find the average score for each country,
-- considering only customers whose score is not 0,
-- and return only countries with an average score
-- greater than 430.

SELECT
country AS Country,
AVG(score) AS Avg_Score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;
