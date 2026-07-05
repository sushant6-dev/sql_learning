# /*

```
WHERE Clause

1. The WHERE clause is used to filter records from a table.
2. Only rows that satisfy the specified condition are returned.
3. Rows that do not satisfy the condition are excluded from the result set.
```

================================================================================================
*/

-- Retrieve customer details from Germany.

SELECT
  id,
  first_name,
  country,
  score
FROM customers
WHERE country = 'Germany';
