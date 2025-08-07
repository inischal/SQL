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


