/*
=========================================
SET OPERATORS IN SQL
=========================================

Definition:
Set Operators are used to combine the result sets of two or more
SELECT statements into a single result set.

Rules:
1. The ORDER BY clause can be used only once and must be placed
   at the end of the combined query.

2. Each SELECT statement must return the same number of columns.

3. Corresponding columns must have compatible data types.

4. The order of columns must be the same in all SELECT statements.

   Example:
   Query 1 -> ID, Name
   Query 2 -> ID, Name  ✅

   Query 1 -> ID, Name
   Query 2 -> Name, ID  ❌

5. Column names (aliases) in the final result set are taken from
   the first SELECT statement. Aliases in subsequent queries are
   ignored.

Common Set Operators:
- UNION      : Combines results and removes duplicates.
- UNION ALL  : Combines results and keeps duplicates.
- INTERSECT  : Returns common records from both result sets.
- EXCEPT     : Returns records from the first result set that are
               not present in the second result set.

*/
