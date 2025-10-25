INSERT INTO Customers VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', 'New York', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '0987654321', 'Los Angeles', 'USA'),
(3, 'Liam', 'O\'Connor', 'liam.oconnor@example.ie', '353123456789', 'Dublin', 'Ireland'),
(4, 'Emma', 'Schmidt', 'emma.schmidt@example.de', '49891234567', 'Berlin', 'Germany'),
(5, 'Noah', 'Dupont', 'noah.dupont@example.fr', '33123456789', 'Paris', 'France'),
(6, 'Ava', 'Rossi', 'ava.rossi@example.it', '390612345678', 'Rome', 'Italy'),
(7, 'Lucas', 'Garcia', 'lucas.garcia@example.es', '34912345678', 'Madrid', 'Spain'),
(8, 'Mia', 'Wong', 'mia.wong@example.hk', '85212345678', 'Hong Kong', 'Hong Kong'),
(9, 'Ethan', 'Nguyen', 'ethan.nguyen@example.vn', '84123456789', 'Ho Chi Minh City', 'Vietnam'),
(10, 'Sophia', 'Kumar', 'sophia.kumar@example.in', '911234567890', 'Mumbai', 'India');


INSERT INTO Products VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 100),
(2, 'Bluetooth Keyboard', 'Electronics', 45.50, 50),
(3, 'Coffee Mug', 'Kitchen', 10.00, 200),
(4, 'Notebook', 'Stationery', 2.50, 500),
(5, 'Water Bottle', 'Fitness', 15.00, 150),
(6, 'Desk Lamp', 'Furniture', 30.00, 75),
(7, 'Running Shoes', 'Footwear', 90.00, 60),
(8, 'Backpack', 'Accessories', 40.00, 80);


INSERT INTO Orders VALUES
(1, 1, '2025-10-01', 51.98),
(2, 2, '2025-10-04', 55.50),
(3, 3, '2025-10-05', 90.00),
(4, 4, '2025-10-06', 32.50),
(5, 5, '2025-10-07', 25.99);


INSERT INTO OrderDetails VALUES
(1, 1, 1, 2, 25.99),
(2, 2, 2, 1, 45.50),
(3, 2, 3, 1, 10.00),
(4, 3, 7, 1, 90.00),
(5, 4, 4, 5, 2.50),
(6, 5, 1, 1, 25.99);
