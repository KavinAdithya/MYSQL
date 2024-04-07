CREATE TABLE AboutEmployee(
message VARCHAR(20));
INSERT INTO employee VALUES(109,'Jim','Halpert','1978-10-01',55,106,3);
CREATE TRIGGER nee
BEFORE INSERT ON employee
FOR EACH ROW BEGIN
IF NEW.branch_id=3 THEN
INSERT INTO aboutemployee VALUES('KavinOiii');
ELSEIF NEW.branch_id=2 THEN 
INSERT INTO aboutemployee VALUES('KavinDharani');
ELSE 
 INSERT INTO aboutemployee VALUES('DharaniKavin');