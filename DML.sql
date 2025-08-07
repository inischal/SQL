/* Data Manipulation (DML)*/
use MyDatabase;

select * from customers;

INSERT INTO customers (id, first_name, country, score)
VALUES 
	(6, 'Anna', 'USA',NULL),
	(7,'Sam',NULL, 100);

/*Inserting values with respective columns */
INSERT INTO customers (id, first_name)
VALUES
	(8,'Andreas');


/* Copy data from 'customers' table into 'persons' */
CREATE table persons(
	id int NOT NULL PRIMARY KEY,
	person_name varchar(50) NOT NULL,
	birth_date DATE NULL,
	phone varchar(15) NOT NULL
);
INSERT INTO persons(id, person_name, birth_date, phone)
SELECT
id,
first_name,
NULL,
'Unknown'
from customers
select * from persons;



/* UPDATE COMMAND */

/* SYNTAX: UPDATE table_name
	SET column1 =  value1,
		column2 =  value2
	WHERE <CONDITION> */

-- NOTE: Always use WHERE to avoid UPDATING all rows unintentionally


/* Change the score of customer 6 to 0 */
UPDATE customers
SET score = 0
WHERE id = 6;

SELECT * FROM customers where id = 8;
-- Task: Change the score of the customer with iD 8 to 0 and update the country to 'UK'
UPDATE customers
SET score = 0,country = 'UK'
WHERE id = 8

--DELETE command
--TASK: Delete all customers with an ID greater than 5
--SYNTAX: 
		/* DELETE FROM table_name
		WHERE <CONDITION> */
DELETE FROM customers
WHERE id > 5;

--TASK: Delete all data from table persons
TRUNCATE TABLE persons;

