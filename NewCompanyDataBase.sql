CREATE DATABASE CompanyDataBase;
CREATE TABLE employee(
emp_id INT,
first_name VARCHAR(10),
second_name VARCHAR(15),
birth_date DATE,
salary DECIMAL(2),
supre_id INT ,
branch_id INT,
PRIMARY KEY(emp_id));
DESCRIBE TABLE employee;
DESCRIBE employee;
CREATE TABLE branch( 
branch_id INT PRIMARY KEY,
branch_name VARCHAR(15),
mgr_id INT ,
mgr_start_date DATE,
FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);
DESCRIBE branch;
ALTER TABLE employee ADD FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL;
ALTER TABLE employee ADD FOREIGN KEY(supre_id) REFERENCES employee(emp_id) ON DELETE SET NULL;
CREATE TABLE client_table(
client_id INT PRIMARY KEY,
client_name VARCHAR(20),
branch_id INT,
FOREIGN KEY(branch_id) REFERENCES branch(branch_id));
DESCRIBE client_table;
CREATE TABLE Works_With(emp_id INT,
client_id INT ,
total_sales DECIMAL(2,0),
PRIMARY KEY(emp_id,client_id),
FOREIGN KEY(emp_id) REFERENCES employee(emp_id),
FOREIGN KEY(client_id) REFERENCES client_table(client_id));
DESCRIBE works_with;
CREATE TABLE branch_supplier(
branch_id INT ,
supplier_name VARCHAR(20),
supply_type VARCHAR(20));
DESCRIBE branch_supplier;
ALTER TABLE branch_supplier ADD PRIMARY KEY(branch_id,supplier_name);
ALTER TABLE branch_supplier ADD FOREIGN KEY(branch_id) REFERENCES branch(branch_id);
INSERT INTO employee VALUES(108,'Jim','Halpert','1978-10-01',55,106,3);
UPDATE employee SET branch_id=3 WHERE emp_id=106;
INSERT INTO branch VALUES(3,'Stamford',106,'1998-02-13');
INSERT INTO client_table VALUES(406,'FedEx',2);
INSERT INTO Works_with VALUES(105,406,13);
INSERT INTO branch_supplier VALuES(3,'labels','Forms');
SELECT * FROM employee;
SELECT * FROM branch;
SELECT * FROM client_table;
SELECT * FROM works_with;
SELECT * FROM branch_supplier;
SELECT first_name,emp_id FROM employee UNION
SELECT second_name,supre_id FROM employee;
SELECT employee.first_name,employee.second_name,branch.branch_name FROM employee RIGHT JOIN branch 
ON employee.emp_id=branch.mgr_id;
SELECT * FROM client_table  JOIN works_with ON client_table.client_id=works_with.client_id;
SELECT * FROM employee e cross JOIN branch_supplier;
CREATE TABLE family( 
member_id VARCHAR(20) PRIMARY KEY,
name VARCHAR(15),
age INT,
parent_id VARCHAR(2));
SELECT family.name AS child_name,family.name AS parent_name FROM family AS child JOIN family AS parent ON child.parent_id=parent.member_id;
SELECT * FROM employee WHERE employee.emp_id IN (SELECT mgr_id FROM branch);
CREATE TABLE filterTable(name VARCHAR(30),
ID INT PRIMARY KEY);