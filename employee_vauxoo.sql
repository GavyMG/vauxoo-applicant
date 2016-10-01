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

CREATE TABLE employee_hobby (
	id serial PRIMARY KEY,
	name varchar(50) NOT NULL,
	description text
);

CREATE TABLE employee_employee_hobby(
	id_employee serial NOT NULL,
	id_hobby serial NOT NULL,
	FOREIGN KEY (id_employee) REFERENCES employee
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (id_hobby) REFERENCES employee_hobby
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	PRIMARY KEY (id_employee, id_hobby)
);

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

-- --INSERT HOBBY
INSERT INTO employee_hobby (name, description)
VALUES ('Reading', 'Reading is a means of language acquisition, communication, and of sharing information and ideas.');

INSERT INTO employee_hobby (name, description)
VALUES ('Video gaming', 'The playing of video games.');

INSERT INTO employee_hobby (name, description)
VALUES ('Running', 'Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot.');


--INSERT employee_hobby
INSERT INTO employee_employee_hobby (id_employee, id_hobby)
VALUES ('1','1');
INSERT INTO employee_employee_hobby (id_employee, id_hobby)
VALUES ('1','2');

INSERT INTO employee_employee_hobby (id_employee, id_hobby)
VALUES ('2','1');
INSERT INTO employee_employee_hobby (id_employee, id_hobby)
VALUES ('2','3');

INSERT INTO employee_employee_hobby (id_employee, id_hobby)
VALUES ('3','2');
INSERT INTO employee_employee_hobby (id_employee, id_hobby)
VALUES ('3','1');

INSERT INTO employee_employee_hobby (id_employee, id_hobby)
VALUES ('4','2');
INSERT INTO employee_employee_hobby (id_employee, id_hobby)
VALUES ('4','3');
