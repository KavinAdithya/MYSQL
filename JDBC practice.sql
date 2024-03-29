SELECT * FROM branch_supplier ORDER BY branch_id DESC LIMIT 2;
SELECT DISTINCT branch_id AS ID_CARD,supplier_name AS NAME_ID FROM branch_supplier;
CREATE TABLE lifeMoments(
 age INT(2) ,
 sex VARCHAR(1),
 name_id VARCHAR(20)
);
DROP TABLE lifeMoments;
DESCRIBE  lifeMoments;
INSERT INTO lifeMoments VAlUES(19,'F','Dharani SK');
SELECT * FROM lifeMoments;
SELECT age FROM lifeMoments WHERE name_id='Dharani SK';
UPDATE lifeMoments SET age=20 WHERE age=19;
AlTER TABLE lifeMoments ADD PRIMARY KEY(age);
DELETE FROM lifeMoments 
WHERE age=20;
TRUNCATE TABLE lifeMoments;
SELECT count(branch_id) branch_id ,supplier_name FROM branch_supplier GROUP BY branch_id,supplier_name;
SELECT * FROM branch_supplier WHERE supplier_name LIKE '__Label';
SELECT supplier_name AS Name_id,branch_id AS ID FROM branch_id UNION SELECT branch_name,branch_id FROM branch;