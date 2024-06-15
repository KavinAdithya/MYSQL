CREATE DATABASE NGPIT;
use ngpit;
CREATE TABLE staffBasicDetail(
id_card INT PRIMARY KEY,
name_id VARCHAR(50) ,
age INT,
dob DATE,
sex VARCHAR(20),
department_name VARCHAR(100),
join_date DATE,
qualification VARCHAR(100),
transactionn INT
);
ALTER TABLE staffBasicDetail DROP COLUMN transactionn;
ALTER TABLE  staffBasicDetail ADD transcationn VARCHAR(50);
CREATE TABLE adminDetail(
name_id VARCHAR(100),
pass_id VARCHAR(100));
CREATE TABLE mapping(
userName VarCHAR(100),
pass_id VARCHAR(100),
id_card INT,
FOREIGN KEY(id_card) REFERENCES staffBasicDetail(id_card)
);
INSERT INTO adminDetail VALUES('Kavin_Adithya','KavinDharani');
ALTER TABLE adminDetail ADD PRIMARY KEY(name_id) ;
UPDATE  adminDetail 
SET pass_id='KavinDharani@3'
WhERE name_id='Kavin_Adithya';
ALTER TABLE staffBasicDetail DROP COLUMN transactionn;