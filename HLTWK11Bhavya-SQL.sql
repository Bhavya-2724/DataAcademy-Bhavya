SELECT * FROM customer
WHERE country='UK';
SELECT * FROM customer
WHERE country='US';
SELECT A.product_name,B.stock FROM product A, inventory_id B
WHERE A.product_id=B.product_id
AND A.product_name ='Sofa set';
SELECT * FROM product order by  product_name ASC;

SELECT * FROM product where product_id IN
(SELECT product_id FROM inventory_id
WHERE stock < 50);


INNER JOIN inventory_id on A.product_id=B.product_id;