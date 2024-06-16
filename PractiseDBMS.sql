create database practice;
drop database practice;
use practice;
show tables;
CREATE TABLE computer(
serial_no INT PRIMARY KEY,
monitor VARCHAR(29),
keyboarD VARCHAR(39),
date_ DATE ,
date_time DATETIME,
insert_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
update_time TIMESTAMP DEFAULT current_timestamp ON UPDATE current_timestamp
);
Drop table computer;
SELECT * FROM computer;
ALTER TABLE computer MODIFY serial_no INT AUTO_INCREMENT;
update  computer set monitor = 'techno' where serial_no = 2;
INSERT INTO computer(monitor,keyboarD,date_,date_time,age) VALUES( 'hggd', 'DELL', '2002-01-09', '1029-08-06 17:54:09',19);
ALTER TABLE computer ADD COLUMN timestam TIMESTAMP; 
DELETE FROM  computer where serial_no = 1;
alter table computer Drop date_;
ALTER TABLE computer ADD COLUMN date_ DATE;
INSERT INTO computer VALUES(1,'iOS','Windows',curdate(),now(),now(),now());
ALTER TABLE computer ADD CONSTRAINT monitors  UNIQUE(monitor);
TRUNCATE TABLE computer ;
ALTER TABLE computer ADD COLUMN age INT CHECK(age > 18);
alter table computer MODIFY serial_no INT AUTO_INCREMENT;
DESCRIBE computer;
ALTER TABLE computer MODIFY keyboarD INT DEFAULT 2;
CREATE TABLE string_primary(
email VARCHAR(12) ,
age INT, 
gmail VARCHAR(23),
PRIMARY KEY(email,age,gmail)
);
INSERT INTO string_primary VALUES('KAVIN',19,'9901');
USE employee;
SHOW TABLES;
SELECT * FROM department;
SELECT * FROM department ORDER BY  name_of_department DESC;
SELECT * FROM department 
WHERE depart_ID != 5 AND name_of_department = 'CSE' || name_of_department = 'IT' AND depart_ID != 2
ORDER BY  depart_ID ASC;
