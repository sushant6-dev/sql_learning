/*
	WHERE Clause

	1. The WHERE clause is used to filter data
	   based on specified conditions.
	2. It helps retrieve only the required rows
	   from a table.
	3. Operators commonly used with WHERE:
		- Comparison Operators
		- Logical Operators
		- Range Operator
		- Membership Operators
		- Search Operator

	Comparison Operators:
		=	(Equal To)
		!=	(Not Equal To)
		<>	(Not Equal To)
		>	(Greater Than)
		<	(Less Than)
		>=	(Greater Than Or Equal To)
		<=	(Less Than Or Equal To)

	Logical Operators:
		AND	(All conditions must be TRUE)
		OR	(At least one condition must be TRUE)
		NOT	(Reverses the result)

	Range Operator:
		BETWEEN
		Returns TRUE if a value lies within
		the specified range (inclusive).

	Membership Operators:
		IN
		Returns rows whose values exist in a list.

		NOT IN
		Returns rows whose values do not exist
		in a list.

	Search Operator:
		LIKE
		Used for pattern matching.

		%	Represents zero or more characters.
		_	Represents exactly one character.
*/

-- Return customers whose score is between 100 and 500.

SELECT
	*
FROM customers
WHERE score BETWEEN 100 AND 500;

-- Retrieve all customers from Germany or USA.

SELECT
	*
FROM customers
WHERE country IN ('Germany', 'USA');

-- Find all customers whose name starts with 'M'.

SELECT
	*
FROM customers
WHERE first_name LIKE 'M%';

-- Find all customers whose name contains 'r'
-- at the third position.

SELECT
	*
FROM customers
WHERE first_name LIKE '__r%';

-- Retrieve customers whose score is greater than 500.

SELECT
	*
FROM customers
WHERE score > 500;

-- Retrieve customers from Germany
-- having score greater than 500.

SELECT
	*
FROM customers
WHERE country = 'Germany'
AND score > 500;

-- Retrieve customers from Germany
-- or USA.

SELECT
	*
FROM customers
WHERE country = 'Germany'
OR country = 'USA';

-- Retrieve customers who are not from Germany.

SELECT
	*
FROM customers
WHERE NOT country = 'Germany';
