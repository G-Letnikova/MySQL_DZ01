CREATE DATABASE phonesDB;
USE phonesDB;
CREATE TABLE phones
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
product_name VARCHAR(30) NOT NULL,
manufacturer VARCHAR(30) NOT NULL,
product_count INT NOT NULL,
price INT NOT NULL
);

INSERT phones(product_name, manufacturer, product_count, price)
VALUES
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 5100),
('Galaxy S9', 'Samsung', 2, 5600),
('Galaxy S8', 'Samsung', 1,  4100),
('P20 Pro', 'Huawei', 5, 3600);

SELECT * FROM phones;

-- вывести название, производителя, цену для товаров, количество которых > 2
SELECT product_name, manufacturer, price FROM phones
WHERE product_count > 2;

-- вывести весь ассортимент марки Samsung
SELECT * FROM phones
WHERE manufacturer  = 'Samsung';

-- вывести товары, в названии которых есть цифра 8
SELECT * FROM phones
WHERE product_name LIKE '%8%';


