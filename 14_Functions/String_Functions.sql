/*
===========================================================
                    STRING FUNCTIONS
===========================================================

String Functions are used to manipulate, calculate, and
extract data from text values.

They are categorized into three types:

1. Manipulation Functions
   • CONCAT()   - Combines multiple strings.
   • UPPER()    - Converts text to uppercase.
   • LOWER()    - Converts text to lowercase.
   • TRIM()     - Removes leading and trailing spaces.
   • REPLACE()  - Replaces specific characters or words.

2. Calculation Functions
   • LEN()      - Returns the number of characters.

3. Extraction Functions
   • LEFT()      - Extracts characters from the left.
   • RIGHT()     - Extracts characters from the right.
   • SUBSTRING() - Extracts a portion of a string.

===========================================================
Example 1: CONCAT() & UPPER()
===========================================================
Purpose:
- Combine first_name and country into a single value.
- Convert first_name into uppercase.

*/

SELECT
    first_name,
    country,
    CONCAT(first_name, '_', country) AS Country_Name,
    UPPER(first_name) AS Upper_Name
FROM customers;


/*
===========================================================
Example 2: TRIM()
===========================================================
Purpose:
Find customers whose first_name contains
leading or trailing spaces.

TRIM() removes unwanted spaces from both
the beginning and the end of a string.
*/

SELECT
    first_name AS Original_Name,
    TRIM(first_name) AS Clean_Name,
    country
FROM customers
WHERE first_name <> TRIM(first_name);


/*
===========================================================
Example 3: REPLACE()
===========================================================
Purpose:
Replace '-' with '/' in a phone number.
*/

SELECT
    '123-456-7890' AS Original_Phone,
    REPLACE('123-456-7890', '-', '/') AS Clean_Phone;


/*
===========================================================
Example 4: REPLACE()
===========================================================
Purpose:
Change a file extension from .txt to .csv.
*/

SELECT
    'data.txt' AS Original_File,
    REPLACE('data.txt', '.txt', '.csv') AS Converted_File;


/*
===========================================================
Example 5: LEN()
===========================================================
Purpose:
Calculate the length of each customer's first name.

TRIM() is used before LEN() to ignore
unwanted leading or trailing spaces.
*/

SELECT
    TRIM(first_name) AS First_Name,
    LEN(TRIM(first_name)) AS Name_Length
FROM customers;


/*
===========================================================
Example 6: LEFT()
===========================================================
Purpose:
Extract the first two characters
from each customer's first name.
*/

SELECT
    first_name,
    LEFT(TRIM(first_name), 2) AS First_Two_Characters
FROM customers;


/*
===========================================================
Example 7: SUBSTRING()
===========================================================
Purpose:
Remove the first character from each
customer's first name.

Syntax:
SUBSTRING(expression, start_position, length)

start_position = 2
Means extraction starts from the second character.
*/

SELECT
    first_name,
    SUBSTRING(TRIM(first_name), 2, LEN(TRIM(first_name))) AS Modified_Name
FROM customers;
