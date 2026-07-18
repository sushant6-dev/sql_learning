/*
=================================================
SET OPERATORS IN SQL
=================================================

Definition:
Set Operators are used to combine the results of two or more
SELECT statements into a single result set.

Operators Covered:
1. UNION
2. UNION ALL
3. EXCEPT
4. INTERSECT

=================================================
UNION
=================================================

Definition:
UNION combines the results of two SELECT statements and
removes duplicate rows from the final result set.

Key Points:
1. Returns only unique rows.
2. Duplicate checking is performed across all selected columns.
3. Slightly slower than UNION ALL due to duplicate removal.

Example:
Combine customers and employees into a single list.
*/

SELECT
    FirstName,
    LastName
FROM Sales.Customers

UNION

SELECT
    FirstName,
    LastName
FROM Sales.Employees;


/*
=================================================
UNION ALL
=================================================

Definition:
UNION ALL combines the results of two SELECT statements
without removing duplicate rows.

Key Points:
1. Returns all rows, including duplicates.
2. Faster than UNION because no duplicate check is performed.
3. Preferred when duplicate removal is not required.

Example:
Combine customers and employees while keeping duplicates.
*/

SELECT
    FirstName,
    LastName
FROM Sales.Customers

UNION ALL

SELECT
    FirstName,
    LastName
FROM Sales.Employees;


/*
=================================================
EXCEPT
=================================================

Definition:
EXCEPT returns rows from the first query that are not
present in the second query.

Key Points:
1. Returns unique rows from the first query.
2. Removes duplicates automatically.
3. Query order matters.

Example:
Return customers who are not employees.
*/

SELECT
    FirstName,
    LastName
FROM Sales.Customers

EXCEPT

SELECT
    FirstName,
    LastName
FROM Sales.Employees;


/*
=================================================
INTERSECT
=================================================

Definition:
INTERSECT returns rows that exist in both result sets.

Key Points:
1. Returns only common rows.
2. Removes duplicates automatically.
3. Query order affects only column naming.

Example:
Return customers who are also employees.
*/

SELECT
    FirstName,
    LastName
FROM Sales.Customers

INTERSECT

SELECT
    FirstName,
    LastName
FROM Sales.Employees;
