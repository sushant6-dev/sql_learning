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
	6. While using UPDATE, always apply a filter
	   (such as a WHERE clause) to avoid updating
	   unintended rows.
*/

-- Create persons table.

CREATE TABLE persons (
	id INT NOT NULL,
	first_name VARCHAR(50),
	country VARCHAR(50),
	phone VARCHAR(15),
	CONSTRAINT pk_persons PRIMARY KEY (id)
);

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

-- Update customers whose phone is 'N/A'.

UPDATE persons
SET phone = '0000000000'
WHERE phone = 'N/A';

SELECT *
FROM persons
WHERE phone = '0000000000';
