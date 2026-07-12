/*
	JOINS

	1. JOINS are used to combine data from two or more
	   tables based on a related column.
	2. They help retrieve meaningful information
	   stored across multiple tables.

	Types of Joins:

	1. INNER JOIN
	   Returns only the matching records
	   from both tables.

	2. LEFT JOIN
	   Returns all records from the left table
	   and matching records from the right table.

	3. RIGHT JOIN
	   Returns all records from the right table
	   and matching records from the left table.

	4. FULL JOIN
	   Returns all records from both tables.
	   Matching records are combined and
	   non-matching records are filled with NULL.
*/

-- Find customers who have orders.

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
	ON c.id = o.customer_id;

-- Fetch all customers and their order details.

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
	ON c.id = o.customer_id;

-- Fetch all orders with or without customers.

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
	ON c.id = o.customer_id;

-- Fetch all customers and all orders,
-- including unmatched records.

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
	ON c.id = o.customer_id;

/*
	WHERE vs JOIN

	WHERE -> Filter by column values.

	Example:
	WHERE score > 500

	JOIN -> Filter by matching records
	between two tables.

	Example:
	INNER JOIN orders
	ON customers.id = orders.customer_id
*/

-- Find customers who have orders
-- without using INNER JOIN.

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
	ON c.id = o.customer_id
WHERE c.id IS NOT NULL
AND o.customer_id IS NOT NULL;
