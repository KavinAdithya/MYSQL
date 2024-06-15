SELECT * FROM music.employee;
use music;
select DISTINCT salary from employee;
create table emp(
id INT primary key auto_increment,
name_id VARCHAR(20) ,
age INT UNIQUE,
a VARCHAR(1) DEFAULT 'K'
);
select * from emp;
insert into emp(name_id,age) values('kavinDharani',99);
SELECT DISTINCT a,age FROM emp  ORDER BY a  LIMIT 4;
select * from emp where name_id LIKE '___________';