use employee;
show tables;
SELECT * FROM department;
SELECT * FROM employee;
SELECT name, COUNT(id_no) AS TOTAL_MEMBERS FROM employee GROUP BY name; 
use practice;

UPDATE Employees SET Salary = 60000 WHERE EmployeeID = 9;
CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	Name VARCHAR(15),
	Department VARCHAR(12),
	Salary INT ,
	HireDate DATE,
	TimeStamp TIMESTAMP
);
DESCRIBE Employees;
SELECT * FROM Employees;


INSERT INTO Employees VALUES(2, 'Bob', 'IT', 80000, '2018-03-12', '2018-03-12 10:00:00'),
(3,'Charlie','IT',75000,'2019-07-09','2019-07-09 11:00:00');
INSERT INTO Employees VALUES(4, 'David', 'Finance', 90000, '2017-06-12', '2018-03-12 12:00:00'),
(5,'Eve','HR',70000,'2019-11-03','2019-07-09 13:00:00'),
(6,'FRANK', 'IT',82000,'2021-08-14','2021-08-14 14:00:00'),
(7,'Grace', 'Finance', 95000, '2018-12-30','2018-08-14 15:00:00'),
(8,'Hannah', 'Marketing',60000,'2020-09-17', '2020-09-17 16:00:00'),
(9,'Ian','Marketing',58000,'2019-04-21','2019-04-21'),
(10,'Jessica','IT',72000,'2016-05-08', '2016-05-08 17:00:00');

-- Query for amount paid for each department
SELECT Department , SUM(Salary) AS PaidAmount FROM Employees GROUP BY Department;

-- Query for average salary in each department
SELECT Department , AVG(Salary) AS AverageSalary FROM Employees GROUP BY Department HAVING AVG(Salary) > 70000;

-- Query to count the employees in each department
SELECT Department , COUNT(Department) AS EmployeeCount FROM Employees GROUP BY Department; 

-- Query to find the department which has employees more than two
SELECT Department, COUNT(Department) AS EmployeeCount FROM Employees GROUP BY Department HAVING COUNT(Department) > 2;

-- Write a query to calculate the total and average salary for each department but only include departments where the average salary is greater than 75,000.
SELECT Department, SUM(Salary) AS TotalSalary, AVG(Salary) AS AverageSalary FROM Employees GROUP BY Department HAVING AVG(Salary) > 75000; 


-- Write a query to find the highest salary in each department.
SELECT Department , MAX(Salary) AS HighestSalary FROM Employees GROUP BY Department;

-- Write a query to find departments where the total salary is less than 200,000.
SELECT Department FROM Employees GROUP BY Department HAVING SUM(Salary) < 200000;

-- Write a query to calculate the average salary for employees hired after January 1, 2019, for each department.
SELECT AVG(Salary) AS AverageSalary FROM Employees WHERE HireDate >= '2019-01-01' GROUP BY Department;

-- Write a query to find departments where more than one employee earns more than 80,000.
SELECT Department FROM Employees WHERE Salary > 80000 GROUP BY Department HAVING COUNT(Department) > 1;

-- Write a query to find departments where the difference between the highest and lowest salaries is greater than 20,000.
SELECT Department FROM Employees GROUP BY Department HAVING MAX(SALARY) - MIN(SALARY) > 10000;