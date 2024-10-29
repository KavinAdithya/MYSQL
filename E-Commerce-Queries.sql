Drop database eCommerceData;
Create Database eCommerceData;
use eCommerceData;

Create table product(
	product_id INT PRIMARY KEY auto_increment,
	product_name VARCHAR(30) NOT NULL,
    quantity INT CHECk(quantity >= 0),
    price DECIMAL(20, 5) CHECK(price >= 0),
    brand VARCHAR(20) NOT NULL
);

DESCRIBE product;

ALTER TABLE product modify product_name VARCHAR(30);
ALTER TABLE product add product_id INT PRIMARY KEY;
ALTER TABLE product DROP PRIMARY KEY;
ALTER TABLE product modify product_id INT auto_increment;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM product WHERE product_id = 15;
SET SQL_SAFE_UPDATES = 1;
CREATE TABLE laptop (
	product_id INT ,
	main_memory INT,
    processor VARCHAR(30),
    secondary_storage INT,
    FOREIGN KEY(product_id) REFERENCES product(product_id)
);

CREATE TABLE cart(
	category CHAR(10) UNIQUE,
    product_name VARCHAR(10) UNIQUE,
    count INT CHECK(count >= 0)
);
INSERT INTO Product VALUES('Techno', 20, 1000.00, 'TECh', 1);
INSERT INTO laptop VALUES(1, 16, 'intel I5', 32);
TRUNCATE TABLE product;
SELECT * FROM product;
SELECT * From bluetooth;
SELECT * FROM  speaker;	
SELECT * FROM laptop;
SELECT * FROM mouse;
SELECT p.product_name, l.processor, l.main_memory, 
l.secondary_storage, p.brand, p.price  FROM product p 
INNER JOIN laptop l ON p.product_id = l.product_id;

CREATE TABLE Bluetooth(
	product_id INT ,
	scope INT CHECK(scope >= 0),
	codec_support VARCHAR(20) NOT NULL,
    FOREIGN KEY(product_id) REFERENCES product(product_id)
);

CREATE TABLE MOUSE(
	product_id INT,
    dot_per_inch VARCHAR(20) NOT NULL,
    polling_rate INT check(polling_rate >= 0),
    isErgonomics CHAR(4) CHECK(isErgonomics = 'true' or isErgonomics = 'false'),
    FOREIGN KEY(product_id) REFERENCES product(product_id)
);

CREATE TABLE Speaker(
	product_id INT,
    driver VARCHAR(20) NOT NULL,
    connectivity VARCHAR(20),
    FOREIGN KEY(product_id) REFERENCES product(product_id)
);

show tables;

CREATE TABLE Admin(
   admin_id INT PRIMARY KEY,
   admin_passcode INT CHECK(admin_passcode > 0),
   admin_password VARCHAR(20) NOT NULL
);

SELECT * from product;

CREATE TABLE keyboard(
product_id INT PRIMARY KEY,
FOREIGN KEY(product_id) REFERENCES product(product_id)
);

ALTER TABLE laptop drop FOREIGN KEY laptop_ibfk_1;
ALTER TABLE keyboard drop FOREIGN KEY keyboard_ibfk_1;
ALTER TABLE mouse drop FOREIGN KEY mouse_ibfk_1;
ALTER TABLE bluetooth drop FOREIGN KEY bluetooth_ibfk_1;
ALTER TABLE speaker drop FOREIGN KEY speaker_ibfk_1;

describe laptop;
DELETE FROM product WHERE product_id = 17;

ALTER TABLE laptop ADD CONSTRAINT laptop_cons FOREIGN KEY(product_id) REFERENCES product(product_id) ON DELETE CASCADE;
ALTER TABLE bluetooth ADD CONSTRAINT bluetooth_cons FOREIGN KEY(product_id) REFERENCES product(product_id) ON DELETE CASCADE;
ALTER TABLE keyboard ADD CONSTRAINT keyboard_cons FOREIGN KEY(product_id) REFERENCES product(product_id) ON DELETE CASCADE;
ALTER TABLE mouse ADD CONSTRAINT mouse_cons FOREIGN KEY(product_id) REFERENCES product(product_id) ON DELETE CASCADE;
ALTER TABLE speaker ADD CONSTRAINT FOREIGN KEY(product_id) REFERENCES product(product_id) ON DELETE CASCADE;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME = 'laptop';

SELECT * FROM keyboard;
SELECT * FROM product;

describe laptop;
describe mouse;
describe keyboard;
describe speaker;
describe bluetooth;

SELECT p.product_name, p.quantity, 
                      p.price, p.brand, b.scope, 
                      b.codec_support
                      FROM bluetooth b INNER JOIN product p ON p.product_id = b.product_id;
					
SELECT p.product_name, p.quantity,
                      p.price, p.brand, m.dot_per_inch, 
                      m.polling_rate, m.isErgonomics 
                      FROM mouse m INNER JOIN product p ON p.product_id = m.product_id;
SELECT * FROM product;
SELECT * FROM Mouse;

DELETE FROM product WHERE product_id = 13;
TRUNCATE TABLE product;
TRUNCATE TABLE laptop;
TRUNCATE TABLE speaker;
TRUNCATE TABLE bluetooth;
TRUNCATE TABLE keyboard;
TRUNCATE TABLE mouse;

SELECT * FRom laptop;


CREATE TABLE category (
category_id INT PRIMARY KEY,
product_name VARCHAR(20)
);

INSERT INTO category VALUES(1, 'laptop');
INSERT INTO category VALUES(2, 'keyboard');
INSERT INTO category VALUES(3, 'mouse');
INSERT INTO category VALUES(4, 'speaker');
INSERT INTO category VALUES(5, 'bluetooth');

ALTER TABLE cart ADD cart_id INT;
ALTER TABLE cart ADD CONSTRAINT FOREIGN KEY(cart_id) REFERENCES category(category_id);

ALTER TABLE cart DROP COLUMN category;

SELECT  EXISTS ( SELECT * FROM laptop WHERE product_id = 1);

SELECT * FROM category;
SELECT * FROM category a INNER JOIN cart c ON a.category_id = c.cart_id;	
TRUNCATE TABLE cart;
SELECT EXISTS (SELECT 1 FROM cart WHERE product_name = 'megabook');

SELECT c.product_name, a.product_name, a.count FROM cart a 
                       INNER JOIN category c 
                       ON a.cart_id = c.category_id;
		
SELECT * FROM admin;
INSERT INTO admin VALUES(1, 6374, 'KavinDharani@3');
SET SQL_SAFE_UPDATES = 1;
update laptop SET secondary_storage = 1024 ;

TRUNCATE TABLE cart;
use eCommerceData;

INSERT INTO cart VALUES('Mega Book', 10, 1);

DESCRIBE cart;
SELECT p.product_name, p.quantity, 
                      p.price, p.brand,
                      s.driver, s.connectivity
                       FROM speaker s INNER JOIN product p ON p.product_id = s.product_id;
SELECT c.product_name, a.product_name, a.count FROM cart a 
                       INNER JOIN category c 
                       ON a.cart_id = c.category_id;