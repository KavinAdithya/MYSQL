CREATE TABLE Employee(
Id INT PRIMARY KEY,
Name VARCHAR(255),
Salary INT,
Department_id INT,
FOREIGN KEY(Department_id) REFERENCES Department(id));

CREATE TABLE Department(
Id INT PRIMARY KEY,
Name VARCHAR(255)
);

use practice;

INSERT INTO Department VALUES
(1, 'IT'),
(2,'Sales');

INSERT INTO Employee VALUES(1,'Joe',70000,1),
(2,'Jim',90000,1),
(3,'Henry',80000,2),
(4,'Sam',60000,2),
(5,'Max',90000,1);

SELECT depart.Name ,ee.Employee, ee.Salary AS Salary FROM Department depart INNER JOIN (SELECT  d.Department_id ,e.Name AS Employee, e.Salary FROM Employee e INNER JOIN 
(SELECT Department_id, MAX(SALARY) AS Salary FROM Employee GROUP BY Department_id) d 
ON d.Department_id = e.Department_id AND e.Salary = d.Salary) ee ON depart.id = ee.Department_id;

SELECT  e.Name AS Employee, e.Salary AS Salary FROM Employee e
INNER JOIN (SELECT Department_id, MAX(Salary) AS Salary FROM Employee GROUP BY Department_id) dep dd
ON dd.departmentId = e.departmentId AND e.salary = dd.salary; 