Create Database Assignment2;

use Assignment2;

CREATE TABLE Categories (
  category_id int PRIMARY KEY,
  name varchar(50),
  parent_category_id int FOREIGN KEY REFERENCES Categories(category_id)
);

CREATE TABLE Products (
  product_id int PRIMARY KEY,
  name varchar(50),
  description text,
  category_id int FOREIGN KEY REFERENCES Categories(category_id),
  price decimal(10,2),
  stock_level int
);

CREATE TABLE Customers (
  customer_id int PRIMARY KEY,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(50),
  shipping_address text,
  billing_address text
);

CREATE TABLE Reviews (
  review_id int PRIMARY KEY,
  product_id int FOREIGN KEY REFERENCES Products(product_id),
  customer_id int FOREIGN KEY REFERENCES Customers(customer_id),
  rating int,
  review_text text,
  review_date date
);

CREATE TABLE Carts (
  cart_id int PRIMARY KEY,
  customer_id int FOREIGN KEY REFERENCES Customers(customer_id),
  creation_date date
);	

CREATE TABLE Cart_Items (
  cart_item_id int PRIMARY KEY,
  cart_id int FOREIGN KEY REFERENCES Carts(cart_id),
  product_id int FOREIGN KEY REFERENCES Products(product_id),
  quantity int
);

CREATE TABLE Promotions (
  promotion_id int PRIMARY KEY,
  name varchar(50),
  description text,
  start_date time,
  end_date time,
  discount_type varchar(255),
  discount_value decimal(10,2)
);

CREATE TABLE Product_Promotions (
  product_promotion_id int PRIMARY KEY,
  product_id int FOREIGN KEY REFERENCES Products(product_id),
  promotion_id int FOREIGN KEY REFERENCES Promotions(promotion_id)
);

CREATE TABLE Orders (
  order_id int PRIMARY KEY,
  customer_id int FOREIGN KEY REFERENCES Customers(customer_id),
  order_date date,
  order_status varchar(255)
);


CREATE TABLE Order_Items (
  order_item_id int PRIMARY KEY,
  order_id int FOREIGN KEY REFERENCES Orders(order_id),
  product_id int FOREIGN KEY REFERENCES Products(product_id),
  quantity int
);
