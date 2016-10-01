-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee_department (
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL,
	description text
);

CREATE TABLE employee (
	id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	id_department serial NOT NULL,
	FOREIGN KEY (id_department) REFERENCES employee_department
	ON DELETE CASCADE
	ON UPDATE CASCADE	
);

--CREATE TABLE employee_hobby (
--);

-- ...
-- --INSERT departements

INSERT INTO employee_department (name, description)
VALUES ('Sales', 'The function of a sales department is to engage in a variety of activities with the objective to promote the customer purchase of a product or the engagement of a service client.');

INSERT INTO employee_department (name, description)
VALUES ('Research & Development', 'The functions of a research and development department are to engage in new product research and development, existing product updates, quality checks and innovation.');

INSERT INTO employee_department (name, description)
VALUES ('Human Resources', 'Human resources is a department that is in charge of sourcing and hiring employees.');

INSERT INTO employee_department (name, description)
VALUES ('Marketing', 'A marketing department promotes your business and drives sales of its products or services.');

INSERT INTO employee_department (name, description)
VALUES ('Finance', 'A marketing department promotes your business and drives sales of its products or services.');

INSERT INTO employee_department (name, description)
VALUES ('Customer Service', 'the department helps to strengthen the brand, build loyalty, and ensure all customer issues are appropriately handled.');

-- --INSERT employees

INSERT INTO employee (first_name, last_name, id_department)
VALUES ('Edson', 'Ruiz', '1');

INSERT INTO employee (first_name, last_name, id_department)
VALUES ('Gabriela', 'Mogollon', '2');

INSERT INTO employee (first_name, last_name, id_department)
VALUES ('Miriam', 'Gamez', '6');

INSERT INTO employee (first_name, last_name, id_department)
VALUES ('Daniela', 'Ocanto', '3');
