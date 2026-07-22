/*
=================================================
FUNCTIONS IN SQL
=================================================

Definition:
Functions are built-in SQL operations that take one
or more inputs, perform a specific task, and return
an output.

Functions help us perform tasks such as:

1. Data Manipulation
2. Data Aggregation
3. Data Cleaning
4. Data Transformation

Syntax:

FUNCTION_NAME(input)

Example:

UPPER('maria') --> MARIA


=================================================
NESTED FUNCTIONS
=================================================

Definition:
A Nested Function is a function used as an argument
inside another function.

Example:

LOWER(LEFT('Maria', 2))

Execution Flow:
1. LEFT('Maria', 2)  --> 'Ma'
2. LOWER('Ma')       --> 'ma'


=================================================
FUNCTION CLASSIFICATION
=================================================

Functions can be categorized based on the number
of rows they process and the output they return.


-------------------------------------------------
1. SINGLE-ROW FUNCTIONS
-------------------------------------------------

Definition:
Single-row functions operate on one row at a time
and return one result for each row.

Input  : Single Row
Output : Single Row

Example:

LEFT('Maria', 2)

Result:
'Ma'


Types of Single-Row Functions:

1. String Functions
2. Numeric Functions
3. Date & Time Functions
4. Null Handling Functions


-------------------------------------------------
2. MULTI-ROW FUNCTIONS
-------------------------------------------------

Definition:
Multi-row functions operate on multiple rows and
return a single aggregated result.

Input  : Multiple Rows
Output : Single Row

Example:

SUM(Score)

Result:
Total Score


Types of Multi-Row Functions:

1. Aggregate Functions
2. Window Functions


=================================================
SUMMARY
=================================================

Single-Row Function:
    1 Row  --> Function --> 1 Result

Multi-Row Function:
    Many Rows --> Function --> 1 Result

Examples:

LEFT('Maria', 2)     --> Single-Row Function
SUM(Score)           --> Multi-Row Function
AVG(Score)           --> Multi-Row Function
ROW_NUMBER() OVER()  --> Window Function
*/
