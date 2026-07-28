/*
===========================================================
               CAST() & CONVERT() FUNCTIONS
===========================================================

CAST() and CONVERT() are SQL Server functions used to
change the data type of a value.

Although both perform data type conversion, they have
different capabilities.

-----------------------------------------------------------
1. CAST()
-----------------------------------------------------------
• Converts a value from one data type to another.
• Follows the ANSI SQL standard, making it portable
  across different database systems.
• Does NOT support formatting styles.

Syntax:
CAST(expression AS data_type)

-----------------------------------------------------------
2. CONVERT()
-----------------------------------------------------------
• Converts a value from one data type to another.
• SQL Server specific function.
• Supports style codes for formatting dates
  and numbers.

Syntax:
CONVERT(data_type, expression, style)

===========================================================
When to Use CAST() vs CONVERT()
===========================================================

Use CAST() when:
• You only need to change the data type.
• You want ANSI-standard SQL.
• Your query should be portable across databases.

Use CONVERT() when:
• You need formatted output.
• You want to apply SQL Server style codes.
• You're working specifically in SQL Server.

===========================================================
Example: CAST() & CONVERT()
===========================================================
Purpose:
Convert DATETIME2 values into different data types
and display them in various formats.
*/

SELECT
    CreationTime,

    -- Convert DATETIME2 to DATE
    CONVERT(DATE, CreationTime) AS Date_Only,

    -- Convert DATETIME2 to VARCHAR using style codes
    CONVERT(VARCHAR, CreationTime, 32) AS US_Date_Format,
    CONVERT(VARCHAR, CreationTime, 34) AS European_Date_Format,

    -- CAST DATETIME2 to DATE
    CAST(CreationTime AS DATE) AS Date_Using_CAST,

    -- CAST VARCHAR to DATETIME2
    CAST('2025-08-20' AS DATETIME2) AS String_To_DateTime

FROM Sales.Orders;
