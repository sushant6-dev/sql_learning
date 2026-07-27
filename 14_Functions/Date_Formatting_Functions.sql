/*
===========================================================
              FORMATTING & CASTING FUNCTIONS
===========================================================

Formatting and Casting functions are used to change
how data is displayed or stored.

1. FORMAT()
   • Converts a date or number into a custom string format.
   • Mainly used for displaying data in a readable format.

2. CAST()
   • Converts a value from one data type to another.
   • Useful when a specific data type is required.

===========================================================
Common Use Cases of FORMAT()
===========================================================

1. Data Aggregation
   • Group data by day, month, quarter, or year.
   • Example:
     - Daily Sales
     - Monthly Sales
     - Yearly Sales

2. Data Standardization
   • Data collected from different systems may have
     different date formats.
   • FORMAT() helps display dates in a consistent format.

3. Report Generation
   • Display dates in user-friendly formats for reports
     and dashboards.

===========================================================
Example 1: FORMAT()
===========================================================
Purpose:
Display the same date in different formats.
*/

SELECT
    CreationTime,

    -- Day Formats
    FORMAT(CreationTime, 'dd') AS Day_Number,
    FORMAT(CreationTime, 'ddd') AS Day_Short_Name,
    FORMAT(CreationTime, 'dddd') AS Day_Full_Name,

    -- Month Formats
    FORMAT(CreationTime, 'MM') AS Month_Number,
    FORMAT(CreationTime, 'MMM') AS Month_Short_Name,
    FORMAT(CreationTime, 'MMMM') AS Month_Full_Name,

    -- Common Date Formats
    FORMAT(CreationTime, 'yyyy-MM-dd') AS ISO_Format,
    FORMAT(CreationTime, 'MM-dd-yyyy') AS US_Format,
    FORMAT(CreationTime, 'dd-MM-yyyy') AS European_Format,

    -- Custom Format
    'Day ' + FORMAT(CreationTime, 'ddd MMM') +
    ' Q' + DATENAME(QUARTER, CreationTime) +
    ' ' + FORMAT(CreationTime, 'yyyy hh:mm:ss tt') AS Custom_Format

FROM Sales.Orders;


/*
===========================================================
Example 2: FORMAT() with GROUP BY
===========================================================
Purpose:
Count the total number of orders placed
each month.

FORMAT() converts the date into
'MMM yy' format before grouping.
*/

SELECT
    FORMAT(OrderDate, 'MMM yy') AS Order_Month,
    COUNT(*) AS Total_Orders
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MMM yy');
