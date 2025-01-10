CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL
);

CREATE TABLE Users (
    username VARCHAR(100) PRIMARY KEY,
    password VARCHAR(100) NOT NULL CHECK (
        LEN(password) >= 8 AND
        password LIKE '%[0-9]%' AND
        password LIKE '%[A-Z]%' AND
        password LIKE '%[a-z]%' AND
        password LIKE '%[^a-zA-Z0-9]%'
    ),
    fullname VARCHAR(100) NOT NULL,
    user_type VARCHAR(20) NOT NULL CHECK (user_type IN ('customer', 'admin', 'staff')) DEFAULT 'customer',

);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    username VARCHAR(100) UNIQUE,
    FOREIGN KEY (username) REFERENCES Users(username)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    username VARCHAR(100) UNIQUE,
    skill_level INT CHECK (skill_level >= 1 AND skill_level <= 5) DEFAULT 1,
    FOREIGN KEY (username) REFERENCES Users(username)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME NOT NULL,
    staff_id INT,
    total DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('pending', 'delivered')) DEFAULT 'pending',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    customer_id INT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    feedback TEXT,
    order_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY,
    supplier_id INT,
    shipment_date DATETIME NOT NULL,
    item_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

CREATE TABLE Stock (
    stock_id INT PRIMARY KEY,
    item_id INT UNIQUE,
    quantity INT NOT NULL CHECK (quantity <
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

CREATE TABLE Order_Items (
    order_id INT,
    item_id INT,
    quantity INT NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

-- Suppliers
INSERT INTO Suppliers (supplier_id, supplier_name) VALUES
(1, 'Syed Brothers Enterprises'),
(2, 'Khan Traders'),
(3, 'Ali & Co.'),
(4, 'Ahmed Corporation'),
(5, 'Zaidi Industries'),
(6, 'Butt Enterprises'),
(7, 'Raza Traders'),
(8, 'Akhtar Corporation'),
(9, 'Malik Industries'),
(10, 'Ali & Sons');

-- Users
INSERT INTO [Users] (username, password, fullname, user_type) VALUES
('AliKhan', 'AliKhan@123', 'Ali Khan', 'customer'),
('SanaAhmed', 'SanaAhmed@123', 'Sana Ahmed', 'customer'),
('FatimaZaidi', 'FatimaZaidi@123', 'Fatima Zaidi', 'customer'),
('KamranButt', 'KamranButt@123', 'Kamran Butt', 'customer'),
('SadiaRaza', 'SadiaRaza@123', 'Sadia Raza', 'customer'),
('AishaMalik', 'AishaMalik@123', 'Aisha Malik', 'customer'),
('AhmedKhan', 'AhmedKhan@123', 'Ahmed Khan', 'staff'),
('NaeemAkhtar', 'NaeemAkhtar@123', 'Naeem Akhtar', 'staff'),
('UsmanAli', 'UsmanAli@123', 'Usman Ali', 'staff'),
('BashirBoss', 'BashirBoss@123', 'Bashir Khan', 'admin');

-- Customers
INSERT INTO Customers (customer_id, username) VALUES
(1, 'AliKhan'),
(2, 'SanaAhmed'),
(3, 'FatimaZaidi'),
(4, 'KamranButt'),
(5, 'SadiaRaza'),
(6, 'AishaMalik');

-- Staff
INSERT INTO Staff (staff_id, username, skill_level) VALUES
(1, 'AhmedKhan', 3),
(2, 'NaeemAkhtar', 4),
(3, 'UsmanAli', 5),
(4, 'BashirBoss', 5);


-- Orders
INSERT INTO Orders (order_id, customer_id, order_date, staff_id, total, status) VALUES
(1, 1, '2024-04-01', 1, 150.50, 'delivered'),
(2, 2, '2024-04-02', 1, 75.25, 'delivered'),
(3, 3, '2024-04-03', 1, 200.00, 'delivered'),
(4, 4, '2024-04-04', 1, 50.00, 'delivered'),
(5, 5, '2024-04-05', 1, 120.75, 'pending'),
(6, 6, '2024-04-06', 2, 90.00, 'delivered'),
(7, 2, '2024-04-07', 2, 300.50, 'pending'),
(8, 1, '2024-04-08', 2, 175.25, 'pending'),
(9, 1, '2024-04-09', 2, 80.00, 'delivered'),
(10, 2, '2024-04-10', 3, 250.75, 'pending');

-- Feedback
INSERT INTO Feedback (feedback_id, customer_id, rating, feedback, order_id) VALUES
(1, 1, 4, 'Good service', 1),
(2, 2, 5, 'Excellent products', 2),
(3, 3, 3, 'Average experience', 3),
(4, 4, 2, 'Poor delivery time', 4),
(5, 5, 4, 'Satisfied overall', 5),
(6, 6, 5, 'Great communication', 9);

-- Items
INSERT INTO Items(item_id, item_name, price) VALUES -- only items that are not isreali products
(1, 'Cocomo', 10.99),
(2, 'Supper Biscuits', 20.50),
(3, 'Lays Chips', 15.75),
(4, 'Lemon Malt', 5.25),
(5, 'Shake', 30.25),
(6, 'Large Fries', 25.99),
(7, 'Bigg Apple', 8.50),
(8, 'Cola Next', 12.75),
(9, 'Dairy Milk', 18.25),
(10, 'Chicken Qorma', 15.00),
(11, 'Dall Channa', 50.00),
(12, 'Dall Mash', 35.75),
(13, 'Donuts', 20.50),
(14, 'Fries', 40.25),
(15, 'Bounty', 45.99),
(16, 'Milky Way', 10.50),
(17, 'Galaxy', 15.75),
(18, 'M&M', 25.25),
(19, 'Kinder Joy', 30.00),
(20, 'Zinger Burger', 35.75);


-- Shipments
INSERT INTO Shipments (shipment_id, supplier_id, shipment_date, Item_id, quantity) VALUES
(1, 1, '2024-04-01', 1, 100),
(2, 2, '2024-04-02', 2, 75),
(3, 3, '2024-04-03', 3, 50),
(4, 4, '2024-04-04', 4, 120),
(5, 5, '2024-04-05', 5, 90),
(6, 6, '2024-04-06', 6, 150),
(7, 7, '2024-04-07', 7, 200),
(8, 8, '2024-04-08', 8, 80),
(9, 9, '2024-04-09', 9, 100),
(10, 10, '2024-04-10', 10, 60);

-- Stock
INSERT INTO Stock (stock_id, Item_id, quantity) VALUES
(1, 1, 50),
(2, 2, 25),
(3, 3, 20),
(4, 4, 80),
(5, 5, 60),
(6, 6, 100),
(7, 7, 150),
(8, 8, 40),
(9, 9, 50),
(10, 10, 30),
(11, 11, 100),
(12, 12, 75),
(13, 13, 60),
(14, 14, 120),
(15, 15, 90),
(16, 16, 150),
(17, 17, 200),
(18, 19, 100),
(19, 20, 60);

-- Order_Item
INSERT INTO Order_Items (order_id, item_id, quantity, total) VALUES
(1, 1, 5, 54.95),
(1, 2, 3, 61.50),
(2, 3, 2, 31.50),
(2, 4, 4, 21.00),
(3, 5, 3, 90.75),
(3, 6, 1, 25.99),
(4, 7, 10, 85.00),
(4, 8, 5, 63.75),
(5, 9, 4, 73.00),
(5, 8, 2, 45.00);



SELECT * FROM [Users];
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Order_Items;
SELECT * FROM Staff;
SELECT * FROM Suppliers;
SELECT * FROM Shipments;
SELECT * FROM Stock;
SELECT * FROM Items;
SELECT * FROM Feedback;
