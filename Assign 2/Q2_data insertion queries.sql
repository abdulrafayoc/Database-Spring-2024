use Assignment2;

-- add only 28 categories 
INSERT INTO Categories
VALUES
  (1, 'Electronics', NULL),
  (2, 'Clothing', NULL),
  (3, 'Home & Garden', NULL),
  (4, 'Toys & Games', NULL),
  (5, 'Beauty & Health', NULL),
  (6, 'Grocery', NULL),
  (7, 'Sports & Outdoors', NULL),
  (8, 'Books & Music', NULL),
  (9, 'Pet Supplies', NULL),
  (10, 'Auto Parts & Accessories', NULL),
  (11, 'Mobile Phones', 1),
  (12, 'Laptops', 1),
  (13, 'Shirts', 2),
  (14, 'Jeans' , 2),
  (15, 'Tools' , 3),
  (16, 'Puzzles' , 4),
  (17, 'Shampoos' , 5),
  (18, 'Face mask' , 5),
  (19, 'Tea' , 6),
  (20, 'Coffee' , 6),
  (21, 'Basketball' , 7),
  (22, 'Soccer' , 7),
  (23, 'Fiction' , 8),
  (24, 'Mystery' , 8),
  (25, 'Dog Food' , 9),
  (26, 'Cat Food' , 9),
  (27, 'Car Battery' , 10),
  (28, 'Car Tire' , 10);

Select * from Categories;

INSERT INTO Products
VALUES
 (1, 'Laptop', 'High-performance laptop', 1, 999.99, 15),
 (2, 'Board Game', 'Fun family board game', 4, 19.99, 10),
 (3, 'Moisturizer', 'Hydrating face moisturizer', 5, 14.99, 5),
 (4, 'Coffee Beans', 'Freshly roasted coffee beans', 6, 9.99, 20),
 (5, 'Book', 'Bestselling novel', 8, 12.99, 10),
 (6, 'Dog Food', 'Premium dog food', 9, 29.99, 15),
 (7, 'Car Battery', 'High-performance car battery', 10, 99.99, 10),
 (8, 'Laptop', 'High-performance laptop', 1, 999.99, 15),
 (9, 'Drill', 'Powerful cordless drill', 3, 49.99, 5),
 (10, 'Basketball', 'Official size basketball', 7, 19.99, 10),
  (11, 'Mobile Phone', 'Latest smartphone model', 11, 499.99, 10),
  (12, 'Laptop', 'High-performance laptop', 12, 999.99, 15),
  (13, 'T-Shirt', 'Casual cotton T-Shirt', 13, 9.99, 10),
  (14, 'Jeans', 'Classic denim jeans', 14, 24.99, 5),
  (15, 'Drill', 'Powerful cordless drill', 15, 49.99, 5),
  (16, 'Board Game', 'Fun family board game', 16, 19.99, 10),
  (17, 'Shampoo', 'Moisturizing shampoo', 17, 7.99, 5),
  (18, 'Face Mask', 'Hydrating face mask', 18, 2.99, 10),
  (19, 'Green Tea', 'Organic green tea', 19, 4.99, 15),
  (20, 'Coffee Beans', 'Freshly roasted coffee beans', 20, 9.99, 20),
  (21, 'Basketball', 'Official size basketball', 21, 19.99, 10),
  (22, 'Soccer Ball', 'Professional soccer ball', 22, 14.99, 5),
  (23, 'Fiction Book', 'Bestselling fiction novel', 23, 12.99, 10),
  (24, 'Mystery Book', 'Thrilling mystery novel', 24, 12.99, 10),
  (25, 'Dog Food', 'Premium dog food', 25, 29.99, 15),
  (26, 'Cat Food', 'Healthy cat food', 26, 19.99, 10),
  (27, 'Car Battery', 'High-performance car battery', 27, 99.99, 10),
  (28, 'Car Tire', 'Durable car tire', 28, 49.99, 5);



Select * from Products;

INSERT INTO Customers
VALUES
  (1, 'Zohaib', 'Ahmed', 'zohaib.ahmed@gmail.com', 'Bahria Town, Rawalpindi Pakistan', 'Bahria Town, Rawalpindi Pakistan'),
  (2, 'Zara', 'Jabbar', 'zara.jabbar@outlook.com', 'Model Town, Lahore Pakistan', 'Model Town, Lahore Pakistan'),
  (3, 'Bilal', 'Hashmi', 'bilal.hashmi@hotmail.com', 'Clifton, Karachi Pakistan', 'Clifton, Karachi Pakistan'),
  (4, 'Nida', 'Farooq', 'nida.farooq@yahoo.com', 'Garden Town, Islamabad Pakistan', 'Garden Town, Islamabad Pakistan'),
  (5, 'Daniyal', 'Khan', 'daniyal.khan@gmail.com', 'Gulberg, Lahore Pakistan', 'Gulberg, Lahore Pakistan'),
  (6, 'Samina', 'Malik', 'samina.malik@yahoo.com', 'Defence Housing Authority (DHA), Karachi Pakistan', 'Defence Housing Authority (DHA), Karachi Pakistan'),
  (7, 'Umaima', 'Ali', 'umaima.ali@outlook.com', 'Faisalabad, Punjab Pakistan', 'Faisalabad, Punjab Pakistan'),
  (8, 'Muhammad', 'Rizwan', 'muhammad.rizwan@gmail.com', 'Plot 12, Gulshan-e-Iqbal, Karachi Pakistan', 'Plot 12, Gulshan-e-Iqbal, Karachi Pakistan'),
  (9, 'Fatima', 'Baloch', 'fatima.baloch@hotmail.com', 'DHA Phase 6, Lahore Pakistan', 'DHA Phase 6, Lahore Pakistan'),
  (10, 'Ali', 'Zafar', 'ali.zafar@gmail.com', 'F-8, Islamabad Pakistan', 'F-8, Islamabad Pakistan');

INSERT INTO Reviews
VALUES
  (1, 2, 3, 4, 'Great quality T-Shirt for a reasonable price Perfect for casual wear', '2024-01-02'),
  (2, 4, 4, 5, 'This board game is a lot of fun! Keeps the family entertained for hours', '2024-02-08'),
  (3, 5, 5, 1, 'The moisturizer is a bit greasy for my skin type', '2024-03-14'),
  (4, 6, 6, 8, 'Delicious coffee beans! Makes a perfect cup every time', '2024-01-20'),
  (5, 8, 7, 2, 'An enjoyable read, but the plot could have been more engaging', '2024-02-26'),
  (6, 9, 8, 8, 'My dog loves this food! It keeps him healthy and energetic', '2024-03-31'),
  (7, 10, 9, 7, 'Reliable car battery so far Hopefully, it lasts a long time', '2024-01-5'),
  (8, 1, 1, 9, 'This laptop is exactly what I needed Fast, powerful, and looks great', '2024-02-10'),
  (9, 3, 2, 3, 'The drill works well, but a bit difficult to handle for some projects', '2024-03-15'),
  (10, 7, 10, 10, 'Great quality basketball for a good price Perfect for shooting hoops', '2024-02-25'),
  (11, 11, 1, 1, 'The mobile phone is sleek, fast, and has a great camera', '2024-03-01'),
  (12, 12, 1, 1, 'This laptop is exactly what I needed Fast, powerful, and looks great', '2024-03-05'),
  (13, 13, 2, 3, 'Great quality T-Shirt for a reasonable price Perfect for casual wear', '2024-03-10'),
  (14, 14, 2, 3, 'The jeans are comfortable and fit well Great for everyday wear', '2024-03-15'),
  (15, 15, 3, 5, 'The drill works well, but a bit difficult to handle for some projects', '2024-03-20'),
  (16, 16, 4, 4, 'This board game is a lot of fun! Keeps the family entertained for hours', '2024-03-25'),
  (17, 17, 5, 5, 'The shampoo smells great and leaves my hair feeling soft and clean', '2024-03-30'),
  (18, 18, 5, 5, 'The face mask is refreshing and hydrating Perfect for a spa day at home', '2024-04-05'),
  (19, 19, 6, 6, 'My dog loves this food! It keeps him healthy and energetic', '2024-04-10'),
  (20, 20, 6, 6, 'Delicious coffee beans! Makes a perfect cup every time', '2024-04-15'),
  (21, 21, 7, 10, 'Great quality basketball for a good price Perfect for shooting hoops', '2024-04-20'),
  (22, 22, 7, 10, 'The soccer ball is durable and holds up well on the field', '2024-04-25'),
  (23, 23, 8, 8, 'An enjoyable read, but the plot could have been more engaging', '2024-04-30'),
  (24, 24, 8, 8, 'A thrilling mystery novel that keeps you guessing until the end', '2024-05-05'),
  (25, 25, 9, 7, 'Reliable car battery so far Hopefully, it lasts a long time', '2024-05-10'),
  (26, 26, 9, 7, 'The cat food is nutritious and keeps my cat healthy and happy', '2024-05-15'),
  (27, 27, 10, 10, 'Great quality basketball for a good price Perfect for shooting hoops', '2024-05-20'),
  (28, 28, 10, 10, 'The soccer ball is durable and holds up well on the field', '2024-05-25');

Select * from Reviews;


INSERT INTO Carts
VALUES
  (1, 1, '2024-03-20'),
  (2, 2, '2024-03-21'),
  (3, 3, '2024-03-22'),
  (4, 4, '2024-03-19'),
  (5, 5, '2024-03-18'),
  (6, 6, '2024-03-17'),
  (7, 7, '2024-03-16'),
  (8, 8, '2024-03-15'),
  (9, 9, '2024-03-14'),
  (10, 10, '2024-03-13'),
  (11, 1, '2024-03-20'),
  (12, 2, '2024-03-21'),
  (13, 3, '2024-03-22'),
  (14, 4, '2024-03-19'),
  (15, 5, '2024-03-18'),
  (16, 6, '2024-03-17'),
  (17, 7, '2024-03-16'),
  (18, 8, '2024-03-15'),
  (19, 9, '2024-03-14'),
  (20, 10, '2024-03-13');

Select * from Carts;




INSERT INTO Cart_Items
VALUES
  (1, 1, 1, 2),
  (2, 1, 2, 4),
  (3, 2, 1, 1),
  (4, 3, 3, 3),
  (5, 4, 7, 2),
  (6, 5, 5, 1),
  (7, 6, 6, 4),
  (8, 7, 8, 1),
  (9, 8, 9, 2),
  (10, 9, 10, 1),
  (11, 10, 3, 1),
  (12, 10, 5, 2),
  (13, 1, 1, 2),
  (14, 1, 2, 4),
  (15, 2, 1, 1),
  (16, 3, 3, 3),
  (17, 4, 7, 2),
  (18, 5, 5, 1),
  (19, 6, 6, 4),
  (20, 7, 8, 1),
  (21, 8, 9, 2),
  (22, 9, 10, 1),
  (23, 10, 3, 1),
  (24, 10, 5, 2);

Select * from Cart_Items;

INSERT INTO Promotions
VALUES
  (1, 'Spring Sale', 'Get 15% off on all products!', '2024-03-20 00:00:00', '2024-04-10 23:59:59', 'percentage', 0.15),
  (2, 'Weekend Flash Sale', '20% off on Laptops and T-Shirts!', '2024-03-22 00:00:00', '2024-03-24 23:59:59', 'percentage', 0.20),
  (3, 'Summer Savings', 'Up to 50% off on select items!', '2024-06-01 00:00:00', '2024-06-30 23:59:59', 'mixed', NULL),
  (4, 'Back to School Bonanza', 'Get ready for school with 10% off on electronics!', '2024-08-15 00:00:00', '2024-08-31 23:59:59', 'percentage', 0.10),
  (5, 'Labor Day Sale', 'Celebrate Labor Day with 15% off sitewide!', '2024-09-01 00:00:00', '2024-09-02 23:59:59', 'percentage', 0.15),
  (6, 'Customer Appreciation Week', 'Thank you for being a valued customer! Enjoy 10% off!', '2024-10-14 00:00:00', '2024-10-20 23:59:59', 'percentage', 0.10),
  (7, 'Black Friday Sale', 'Huge discounts on all products! Dont miss out!', '2024-11-29 00:00:00', '2024-12-02 23:59:59', 'mixed', NULL),
  (8, 'Cyber Monday Deals', 'Cyber savings on electronics and more!', '2024-12-02 00:00:00', '2024-12-03 23:59:59', 'percentage', 0.25),
  (9, 'Holiday Gift Guide', 'Find the perfect gift for everyone on your list!', '2024-12-05 00:00:00', '2024-12-25 23:59:59', 'mixed', NULL),
  (10, 'New Years Sale', 'Start the new year with savings! 10% off everything!', '2025-01-01 00:00:00', '2025-01-10 23:59:59', 'percentage', 0.10);

Select * from Promotions;



INSERT INTO Product_Promotions
VALUES
  (1, 1, 1),
  (2, 3, 2),
  (3, 6, 3),
  (4, 7, 4),
  (5, 10, 5),
  (6, 13, 6),
  (7, 16, 7),
  (8, 19, 8),
  (9, 22, 9),
  (10, 25, 10);

Select * from Product_Promotions;

INSERT INTO Orders
VALUES
  (1, 1, '2024-03-20', 'Shipped'),
  (2, 2, '2024-03-21', 'Processing'),
  (3, 3, '2024-03-22', 'Delivered'),
  (4, 4, '2024-03-19', 'Shipped'),
  (5, 5, '2024-03-18', 'Processing'),
  (6, 6, '2024-03-17', 'Delivered'),
  (7, 7, '2024-03-16', 'Shipped'),
  (8, 8, '2024-03-15', 'Processing'),
  (9, 9, '2024-03-14', 'Delivered'),
  (10, 10, '2024-03-13', 'Shipped'),
  (11, 1, '2024-03-20', 'Shipped'),
  (12, 2, '2024-03-21', 'Processing'),
  (13, 3, '2024-03-22', 'Delivered'),
  (14, 4, '2024-03-19', 'Shipped'),
  (15, 5, '2024-03-18', 'Processing'),
  (16, 6, '2024-03-17', 'Delivered'),
  (17, 7, '2024-03-16', 'Shipped'),
  (18, 8, '2024-03-15', 'Processing'),
  (19, 9, '2024-03-14', 'Delivered'),
  (20, 10, '2024-03-13', 'Shipped'),
  (21, 3, '2024-03-22', 'Delivered'),
  (22, 4, '2024-03-19', 'Shipped'),
  (23, 6, '2024-03-17', 'Delivered'),
  (24, 4, '2024-03-19', 'Shipped'),
  (25, 9, '2024-03-14', 'Delivered'),
  (26, 10, '2024-03-13', 'Shipped'),
  (27, 1, '2024-03-20', 'Shipped'),
  (28, 2, '2024-03-21', 'Processing');

Select * from Orders;


INSERT INTO Order_Items
VALUES
  (1, 1, 1, 2),
  (2, 1, 2, 4),
  (3, 2, 1, 1),
  (4, 3, 3, 3),
  (5, 4, 7, 2),
  (6, 5, 5, 1),
  (7, 6, 6, 4),
  (8, 7, 8, 1),
  (9, 8, 9, 2),
  (10, 9, 10, 1),
  (11, 10, 3, 1),
  (12, 10, 5, 2),
  (13, 1, 1, 2),
  (14, 1, 2, 4),
  (15, 2, 1, 1),
  (16, 3, 3, 3),
  (17, 4, 7, 2),
  (18, 5, 5, 1),
  (19, 6, 6, 4),
  (20, 7, 8, 1),
  (21, 8, 9, 2),
  (22, 9, 10, 1),
  (23, 10, 3, 1),
  (24, 10, 5, 2);

Select * from Order_Items;



