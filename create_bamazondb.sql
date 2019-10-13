DROP DATABASE IF EXISTS bamazondb;
CREATE DATABASE bamazondb;
USE bamazondb;
CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR (50) NOT NULL,
  department_name VARCHAR (50) NOT NULL,
  price DECIMAL (19,4) NOT NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (item_id)
);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Snickers Bar", "Candy", 1.95, 15);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("KitKat Bar", "Candy", 1.75, 10); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Reese's Cup", "Candy", 1.75, 15); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bubble Gum", "Candy", 1.00, 2); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Polo Shirt", "Apperal", 60.00, 5); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Chino Pants", "Apperal", 50.00, 7); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tee Shirt", "Apperal", 20.00, 10); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Socks", "Apperal", 15.00, 1); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Golf Balls", "Sporting Goods", 45.00, 5); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Golf Club Bag", "Sporting Goods", 299.99, 1); 
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Golf Tees", "Sporting Goods", 12.50, 10); 


SELECT * FROM bamazondb.products;