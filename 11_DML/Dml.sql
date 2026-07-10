/*
	DML (Data Manipulation Language)

	1. DML stands for Data Manipulation Language.
	2. It is used to work with the data stored inside tables.
	3. Common DML Commands:
		- INSERT
		- UPDATE
		- DELETE
	4. INSERT is used to add new records to a table.
	5. UPDATE is used to modify existing records.
	6. DELETE is used to remove records from a table.
	7. While using UPDATE or DELETE, always apply
	   a filter (such as a WHERE clause) to avoid
	   affecting unintended rows.
*/

-- Create persons table.

CREATE TABLE persons (
	id INT NOT NULL,
	first_name VARCHAR(50),
	country VARCHAR(50),
	phone VARCHAR(15),
	CONSTRAINT pk_persons PRIMARY KEY (id)
);

-- Insert 3 new records into customers table.

INSERT INTO customers (id, first_name, country, score)
VALUES
	(6, 'Sushant', 'Germany', 1000),
	(7, 'Pranita', 'Dubai', 700),
	(8, 'Thomas', 'England', 900);

SELECT *
FROM customers;

-- Insert data from customers table into persons table.

INSERT INTO persons (id, first_name, country, phone)
SELECT
	id,
	first_name,
	country,
	'N/A'
FROM customers;

SELECT *
FROM persons;

-- Update phone numbers having value 'N/A'.

UPDATE persons
SET phone = '0000000000'
WHERE phone = 'N/A';

SELECT *
FROM persons
WHERE phone = '0000000000';

-- Change the score of customer with id 7
-- to 0 and update the country to UK.

UPDATE customers
SET
	score = 0,
	country = 'UK'
WHERE id = 7;

SELECT *
FROM customers
WHERE id = 7;

-- Delete customers having id greater than 5.

DELETE FROM customers
WHERE id > 5;

SELECT *
FROM customers
WHERE id > 5;

-- Delete all records from persons table.
-- Keep the structure of the table.

DELETE FROM persons;

-- Remove all records from persons table.
-- Keep the structure of the table.
-- Optimized for deleting all rows.

TRUNCATE TABLE persons;
