-- Total Sales Revenue
SELECT SUM(p.price * od.quantity) AS Total_Revenue
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id;

-- Total Sales Revenue per Month
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS Month,
    SUM(p.price * od.quantity) AS Revenue
FROM Orders o
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY Month
ORDER BY Month;

-- Top 3 Best-Selling Products by Revenue
SELECT 
    p.product_name,
    SUM(p.price * od.quantity) AS Revenue
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Revenue DESC
LIMIT 3;

-- Total Number of Customers
SELECT COUNT(*) AS Total_Customers FROM Customers;

-- Monthly New Customer Count (Assuming first order date as joining date)
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS Month,
    COUNT(DISTINCT o.customer_id) AS New_Customers
FROM Orders o
GROUP BY Month
ORDER BY Month;

-- Customer Lifetime Value (Total Spend per Customer)
SELECT 
    c.customer_name,
    SUM(p.price * od.quantity) AS Total_Spend
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY Total_Spend DESC;

-- Most Sold Product Category
SELECT 
    p.category,
    SUM(od.quantity) AS Total_Quantity
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY Total_Quantity DESC;
