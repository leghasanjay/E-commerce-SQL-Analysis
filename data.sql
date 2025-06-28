-- Insert sample customers
INSERT INTO Customers VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Bangalore'),
(4, 'David', 'Hyderabad'),
(5, 'Eva', 'Chennai');

-- Insert sample products
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 50000.00),
(102, 'Smartphone', 'Electronics', 20000.00),
(103, 'Headphones', 'Accessories', 1500.00),
(104, 'Office Chair', 'Furniture', 7000.00),
(105, 'Coffee Mug', 'Home & Kitchen', 300.00);

-- Insert sample orders
INSERT INTO Orders VALUES
(1001, 1, '2025-05-10'),
(1002, 2, '2025-05-12'),
(1003, 3, '2025-06-05'),
(1004, 4, '2025-06-15'),
(1005, 5, '2025-06-20');

-- Insert sample order details
INSERT INTO Order_Details VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 2),
(3, 1002, 102, 1),
(4, 1003, 105, 3),
(5, 1004, 104, 1),
(6, 1005, 103, 1),
(7, 1005, 105, 2);
