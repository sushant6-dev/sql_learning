# /*

```id="db3n1s"
TOP Keyword

1. The TOP keyword is used to limit the number of rows
   returned by a query.
2. It is commonly used to retrieve a specific number of
   records from a table.
3. TOP is often used together with ORDER BY to get:
	- Highest values
	- Lowest values
	- Most recent records
	- Oldest records
4. Without ORDER BY, the returned rows are not guaranteed
   to be in any particular order.
```

================================================================================================
*/

-- Top 3 customers with the highest score.

SELECT TOP 3
*
FROM customers
ORDER BY score DESC;

-- Top 2 customers with the lowest score.

SELECT TOP 2
*
FROM customers
ORDER BY score ASC;

-- Top 3 most recent orders.

SELECT TOP 3
*
FROM orders
ORDER BY order_date DESC;
