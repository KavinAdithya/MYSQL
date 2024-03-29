CREATE DATABASE Company_management;
CREATE TABLE Works_With_table(
emp_id INT ,
client_id INT,
total_sales INT,
PRIMARY KEY(emp_id,client_id)
 );
CREATE TABLE Branch_Supplier(
branch_id INT ,
supplier_name VARCHAR(20),
supply_type VARCHAR(20),
PRIMARY KEY(branch_id,supplier_name));
ALTER TABLE branch_supplier 
ADD FOREIGN KEY(branch_id) REFERENCES employee(emp_id);
INSERT INTO branch_supplier VALUE(103,'Stamford Labels','Custom Forms');
CREATE TABLE Employee(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(10) ,
last_name VARCHAR(10),
birth_Date DATE,
sex VARCHAR(1),
salary INT,
super_id INT,
branch_id INT);
DESCRIBE branch_supplier;
CREATE  TABLE branch(
branch_id INT PRIMARY KEY,
branch_name VARCHAR(15),
mgr_id INT,
mrg_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES Employee(emp_id) ON DELETE SET NULL
);
ALTER TABLE employee
ADD FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
ON DELETE SET NULL;
INSERT INTO employee VALUES(108,'Jim','Halpert','1978-10-01','M',78,106,3);
SELECT *FROM employee;
INSERT INTO branch VALUES(3,'Stamford',106,'1998-10-01');
UPDATE employee
SET branch_id=2
WHERE emp_id=102;
DELETE FROM branch
WHERE branch_id=2;
DESCRIBE branch;
DESCRIBE works_with;
SELECT first_name FROM employee WHERE super_id=100; 
CREATE TABLE Client_table(
client_id INT PRIMARY KEY,
client_name VARCHAR(30),
branch_id INT,
FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL);
ALTER TABLE works_with_table
ADD FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE;
DROP TABLE client;
DROP Table Works_with;