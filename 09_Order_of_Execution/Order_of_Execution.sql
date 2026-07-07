/*
	Order of Execution:

	When an SQL query is executed, the database does
	not process the clauses in the order they are written.
	It follows a logical execution order.

	Query Written Order:

	1. SELECT
	2. DISTINCT
	3. TOP
	4. FROM
	5. WHERE
	6. GROUP BY
	7. HAVING
	8. ORDER BY

	Query Execution Order:

	1. FROM
	2. WHERE
	3. GROUP BY
	4. HAVING
	5. SELECT
	6. DISTINCT
	7. ORDER BY
	8. TOP

	Note:
	Although SELECT is written first in a query,
	it is executed after FROM, WHERE, GROUP BY,
	and HAVING.
*/

-- Find countries with an average score greater than 430.

SELECT DISTINCT TOP 5
	country,
	AVG(score) AS Avg_Score
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430
ORDER BY Avg_Score DESC;
