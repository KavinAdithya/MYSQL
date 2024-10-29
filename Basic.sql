create database datas;
use datas;
CREATE TABLE student(
id INT PRIMARY KEY auto_increment,
name varchar(20) UNIQUE,
age INT, 
salary DECIMAL(10, 2)
);

describe student;
drop table student;

CREATE TABLE employees(
	employee_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    department VARCHAR(20),
    salary DECIMAL(20, 4),
    hire_date DATE
);

INSERT INTO employees VALUES(1, 'Jasprit', 'Bumrah', 'Java', 218000.000, '2024-01-04'); 
SELECT * FROM employees;

SELECT first_name, last_name , salary FROM employees where department = 'JAVA';

SELECT * FROM employees WHERE salary >= 200000;
SELECT * FROM employees WHERE hire_date >='2024-10-04';

Update employees
SET salary = ((salary / 10) + salary)
WHERE department = 'JAVA';

SET SQL_SAFE_UPDATES = 1;

DELETE FROM employees
WHERE employee_id = 1;

SELECT * FROM employees where salary = (select max(salary) from employees where department = 'JAva');

SELECT * FROM employees WHERE first_name LIKE '___';

describe table employees;
describe employees;

SELECT DISTINCT department, first_name, last_name from Employees;

create table stud(
id int PRIMARY KEY,
stud_name char(2),
salary float
);

INSERT INTO stud VALUES(8, 'K', 2.90, 7.1321);
SELECT * FROM stud ;
ALTER TABLE stud add column s decimal(5, 4);
ALTER TABLE stud modify s decimal(10,1);
describe stud;

ALTER TABLE stud DROP PRIMARY KEY;

ALTER TABLE stud modify id decimal(4, 1);
ALTER TABLE stud ADD primary key(id);

ALTER TABLE stud add constraint salary_add CHECK(salary > 20.0);

SELECT CONSTRAINT_NAME FROm information_schema.KEY_COLUMN_USAGE WHERE TABLE_NAME = 'stud';

SHOW CREATE TABLE stud;
ALTER TABLE stud ADD CHECk(stud_name != 'kavin');

ALTER TABLE stud DROP CHECK stud_chk_1;


CREATE TABLE Employees1(
employee_id INT PRIMARY KEY,
emp_name CHAR(10) NOT NULL, 
department CHAR(5),
salary float
);

INSERT INTO Employees1 VALUES(6, 'Alice', 'IT', 5000);

SELECT * FROM Employees1;

Select COUNT(DISTINCT salary) As unique_salary from employees1;

SELECT DISTINCT department from employees1;

SELECT COUNT(DISTINCT emp_name) AS Members FROM employees1;

SELECT DISTINCT salary FROM employees1 where department = 'IT';


show databases;
