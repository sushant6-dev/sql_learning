/*

```id="8g1kqp"
DISTINCT Keyword

1. The DISTINCT keyword is used to remove duplicate values
   from the result set.
2. It returns only unique values from the specified column(s).
3. DISTINCT can be used with one or multiple columns.
4. It is commonly used when you want to identify unique
   records without repetition.
```

================================================================================================
*/

-- Find unique countries of customers.

SELECT DISTINCT
country
FROM customers;
