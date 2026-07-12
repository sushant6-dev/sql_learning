/*
	ADVANCED JOINS

	1. LEFT ANTI JOIN
	   Returns records from the left table
	   that do not have matching records
	   in the right table.

	2. RIGHT ANTI JOIN
	   Returns records from the right table
	   that do not have matching records
	   in the left table.

	3. FULL ANTI JOIN
	   Returns records from both tables
	   that do not have matching records
	   in the other table.

	4. CROSS JOIN
	   Returns every possible combination
	   of rows from both tables.
*/

-- Return customers who do not have any orders.

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
	ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

-- Return orders that are not placed
-- by any customer.

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
	ON c.id = o.customer_id
WHERE c.id IS NULL;

-- Return customers who do not have orders
-- and orders that are not placed by any customer.

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
	ON c.id = o.customer_id
WHERE o.customer_id IS NULL
OR c.id IS NULL;

-- Return every possible combination
-- of customers and orders.

SELECT
	*
FROM customers
CROSS JOIN orders;

/*
	Join Summary

	INNER JOIN
		Matching records only.

	LEFT JOIN
		All records from left table
		and matching records from right table.

	RIGHT JOIN
		All records from right table
		and matching records from left table.

	FULL JOIN
		All records from both tables.

	LEFT ANTI JOIN
		Records in left table with no match.

	RIGHT ANTI JOIN
		Records in right table with no match.

	FULL ANTI JOIN
		Unmatched records from both tables.

	CROSS JOIN
		Every possible combination of rows.
*/
