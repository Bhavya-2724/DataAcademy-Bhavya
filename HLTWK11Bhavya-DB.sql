create database retail;
show databases;
use retail;
create table retail.customer
(
customer_id INT NOT NULL,
customer_firstname varchar(20) NOT NULL,
customer_lastname varchar(20),
city varchar(20), country varchar(20),
primary key(customer_id),
);

INSERT INTO customer(customer_id,customer_firstname,customer_lastname,city,country)
VALUES('12101','Charles','Dsouza','London','UK'),
('12102','Emily','Anderson','California','US'),
('12103','Mark','Smith','Delhi','India'),
('12104','David','Macdonald','Paris','France'),
('12105','Peter','Hangson','Coventry','UK'),
('12106','Daisy','barrow','Paris','France'),
('12107','Charlie','Sigmund','Capetown','Southafrica'),
('12108','Robert','Pattison','Sydney','Australisa'),
('12109','Jessica','Lesko','Columbo','Srilanka'),
('12110','Rachel','Hitman','kuala lumpur','Malaysia')

 
create table product(
product_id INT NOT NULL,
product_name VARCHAR(20) NOT NULL,
product_category VARCHAR(20),
price DECIMAL(5,2) NOT NULL,
PRIMARY KEY(product_id),
);
INSERT INTO product(product_id,product_name,product_category,price)
VALUES ('114','Machine Learning','Books','25'),
('145','Coffee Table','Furniture','150'),
('654','Sofa set','Furniture','250'),
('253','Deep Learning','Books','36'),
('789','Leather Jacket','Clothes','80'),
('457','Denim Pants','Clothes','50'),
('965','Garden Chair','Furniture','250'),
('458','Pendent set','Accessories','120'),
('665','Bracelet','Accessories','220'),
('124','Scikit learn','Books','60')

CREATE TABLE transaction_TB(
Transaction_id VARCHAR(20) NOT NULL,
customer_id INT NOT NULL,
product_id INT NOT NULL,
order_date DATE,
delivery_date DATE,
quantity INT,
PRIMARY KEY(Transaction_id));
 
INSERT INTO (Transaction_id,customer_id,product_id,order_date,delivery_date,quantity)
Values('Trans_001','12104','145','01/03/2021','11/03/2021','2'),
('Trans_002','12107','665','04/05/2021','14/05/2021','1'),
('Trans_003','12109','124','06/04/2021','16/04/2021','3'),
('Trans_004','12106','654','05/02/2021','15/02/2021','4'),
('Trans_005','12102','458','05/05/2021','15/05/2021','1'),
('Trans_006','12108','789','01/01/2021','11/01/2021','2'),
('Trans_007','12101','457','25/04/2021','05/05/2021','3'),
('Trans_008','12110','114','08/07/2021','18/07/2021','1'),
('Trans_009','12105','253','06/05/2021','16/05/2021','4'),
('Trans_010','12103','965','04/05/2021','14/05/2021','2')


CREATE TABLE inventory_id(
product_id INT NOT NULL,
product_name VARCHAR(20),
stock INT NOT NULL);

INSERT INTO inventory_id(product_id,product_name,stock)
VALUES('114','Machine Learning','25'),
('145','Coffee Table','150'),
('654','Sofa set','250'),
('253','Deep Learning','36'),
('789','Leather Jacket','80'),
('457','Denim Pants','50'),
('965','Garden Chair','250'),
('458','Pendent set','120'),
('665','Bracelet','220'),
('124','Scikit learn','60')
