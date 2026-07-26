/*
===========================================================
                     DATE FUNCTIONS
===========================================================

Date Functions are used to extract, format,
calculate, and validate date and time values.

They can be categorized into four groups:

1. Part Extraction Functions
   • DAY()       - Returns the day of the month.
   • MONTH()     - Returns the month number.
   • YEAR()      - Returns the year.
   • DATEPART()  - Returns a specific part of a date as a number.
   • DATENAME()  - Returns a specific part of a date as text.
   • DATETRUNC() - Truncates a date to a specified part.
   • EOMONTH()   - Returns the last day of the month.

2. Formatting & Casting Functions
   • FORMAT()    - Formats a date into a custom string.
   • CONVERT()   - Converts a value from one data type to another.
   • CAST()      - Converts a value to a specified data type.

3. Calculation Functions
   • DATEADD()   - Adds or subtracts a time interval.
   • DATEDIFF()  - Calculates the difference between two dates.

4. Validation Functions
   • ISDATE()    - Checks whether a value is a valid date.

===========================================================
Example 1: DATENAME(), DATEPART(), DAY()
===========================================================
Purpose:
Extract different parts of a date and time value.

- DATENAME() returns the result as text.
- DATEPART() returns the result as a number.
- DAY() extracts only the day of the month.
*/

SELECT
    OrderID,
    OrderDate,
    ShipDate,
    CreationTime,

    -- DATENAME Examples (Returns Text)
    DATENAME(QUARTER, CreationTime) AS Quarter_Name,
    DATENAME(MONTH, CreationTime) AS Month_Name,
    DATENAME(WEEKDAY, CreationTime) AS Weekday_Name,

    -- DATEPART Examples (Returns Number)
    DATEPART(QUARTER, CreationTime) AS Quarter_Number,
    DATEPART(WEEK, CreationTime) AS Week_Number,
    DATEPART(WEEKDAY, CreationTime) AS Weekday_Number,

    -- DAY Example
    DAY(CreationTime) AS Day_Of_Month

FROM Sales.Orders;


/*
===========================================================
Example 2: DATETRUNC()
===========================================================
Purpose:
Group records by month.

DATETRUNC() removes smaller date parts,
making it useful for monthly, quarterly,
or yearly aggregations.
*/

SELECT
    DATETRUNC(MONTH, CreationTime) AS Order_Month,
    COUNT(*) AS Total_Orders
FROM Sales.Orders
GROUP BY DATETRUNC(MONTH, CreationTime);


/*
===========================================================
Example 3: YEAR()
===========================================================
Purpose:
Count the total number of orders placed
in each year.
*/

SELECT
    YEAR(OrderDate) AS Order_Year,
    COUNT(OrderID) AS Total_Orders
FROM Sales.Orders
GROUP BY YEAR(OrderDate);


/*
===========================================================
Example 4: MONTH()
===========================================================
Purpose:
Retrieve all orders placed in February.

MONTH() returns the month number
(1 = January, 2 = February, ..., 12 = December).
*/

SELECT *
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2;
