-- GROUP CONCAT
SELECT Department , group_concat(Name ORDER BY NAME DESC SEPARATOR ' / ') AS Name FROM Employees GROUP BY Department;

-- Table Creation
CREATE TABLE Instructors(
InstructorID INT PRIMARY KEY,
InstructorName VARCHAR(255)
);

INSERT INTO Instructors VALUES(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Michael Johnson');

SELECT * FROM Instructors;

CREATE TABLE Courses(
CourseID INT PRIMARY KEY,
CouseName VARCHAR(255),
InstructorId INT,
FOREIGN KEY(InstructorID)  REFERENCES Instructors(InstructorID) ON DELETE CASCADE
);

USE practice;

DESCRIBE Courses;

DROP TABLE Courses;

INSERT INTO Courses VALUES(1,'Introduction to SQL',1),
(2,'Data Analysis',2),
(3,'Python Programming',1),
(4,'Machine Learning',3),
(5,'Web Development',2),
(6,'Database Design',1),
(7,'Statistics',2),
(8,'Data Mining',3),
(9,'Artificial Intelligence',3),
(10,'Software Engineering',2);

SELECT * FROM Courses;

SELECT D.InstructorName , GROUP_CONCAT(C.CouseName SEPARATOR ',') FROM Courses C JOIN Instructors D  ON D.InstructorID = C.InstructorID GROUP BY D.InstructorName;