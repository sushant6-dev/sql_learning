/*
	DDL (Data Definition Language)

	1. DDL stands for Data Definition Language.
	2. It is used to define and modify the structure
	   of database objects.
	3. Using DDL commands, we can:
		- Create tables
		- Modify tables
		- Delete tables
		- Remove all records from a table
	4. Common DDL Commands:
		- CREATE
		- ALTER
		- DROP
		- TRUNCATE
*/

USE MyDatabase;

-- Create a new table called persons.

CREATE TABLE persons (
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	birth_date DATE,
	CONSTRAINT pk_persons PRIMARY KEY (id)
);

SELECT * FROM persons;

-- Add a new column named email.

ALTER TABLE persons
ADD email VARCHAR(50) NOT NULL;

-- Delete column phone.

ALTER TABLE persons
DROP COLUMN phone;

-- Remove all records from the persons table.

TRUNCATE TABLE persons;

-- Drop the persons table.

DROP TABLE persons;
