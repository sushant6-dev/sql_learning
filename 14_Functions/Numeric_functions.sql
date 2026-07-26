/*
===========================================================
                    NUMBER FUNCTIONS
===========================================================

Number Functions are used to perform mathematical
operations on numeric values.

In this section, we'll cover:

1. ROUND()
   • Rounds a decimal number to the specified number
     of decimal places.
   • If the next digit is 5 or greater, the value is
     rounded up.
   • If the next digit is less than 5, the value is
     rounded down.

2. ABS()
   • Returns the absolute (positive) value of a number.
   • Negative numbers become positive.
   • Positive numbers remain unchanged.

===========================================================
Example 1: ROUND()
===========================================================
Purpose:
Round a decimal number to different levels
of precision.
*/

SELECT
    3.516 AS Original_Value,
    ROUND(3.516, 2) AS Round_2_Decimals,
    ROUND(3.516, 1) AS Round_1_Decimal,
    ROUND(3.516, 0) AS Round_0_Decimals;


/*
===========================================================
Example 2: ABS()
===========================================================
Purpose:
Return the absolute value of a number.

ABS() removes the negative sign from a number
without changing its magnitude.
*/

SELECT
    ABS(-10) AS Absolute_Negative,
    ABS(10) AS Absolute_Positive;
