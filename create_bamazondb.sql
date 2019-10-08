DROP DATABASE IF EXISTS bamazondb;
CREATE DATABASE bamazondb;
USE bamazondb;
CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR (50) NOT NULL,
  department_name VARCHAR (50) NOT NULL,
  price DECIMAL (13.2) NOT NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (item_id)
);
SELECT * FROM bamazondb.products;