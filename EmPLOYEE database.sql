USE music;
CREATE DATABASE employee;
use employee;
CREATE TABLE employee(name VARCHAR(20),
age INT,
id_no INT PRIMARY KEY,
DOB DATE);
CREATE TABLE department(name_of_department VARCHAR(30),
depart_ID INT PRIMARY KEY);
INSERT INTO department VALUES('CSBS',1);
SELECT * FROM department;
ALTER TABLE employee ADD department_id INT;
ALTER TABLE employee ADD FOREIGN KEY(department_id) REFERENCES department(depart_ID);
SELECT * FROM employee;
SHOW INDEX FROM employee;
SHOW CREATE TABLE employee;
INSERT INTO employee VALUES('rani',20,12,'2004-08-04',11);
ALTER TABLE employee DROP foreign key employee_ibfk_1;
ALTER TABLE employee DROP PRIMARY KEY;
SELECT CONSTRAINT_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE quantity_in_stock
WHERE TABLE_NAME='employee'AND COLUMN_NAME='department_id';
ALTER TABLE employee DROP COLUMN department_id;