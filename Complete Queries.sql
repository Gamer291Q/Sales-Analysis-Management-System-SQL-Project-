create table Regions (
	region_id int primary key,
	region_name varchar(50) NOT NULL unique
);

create table Salespersons (
	salesperson_id int primary key,
    name varchar(50) NOT NULL,
    region_id int NOT NULL,
    foreign key (region_id) references Regions(region_id)
);

create table Customers (
	customer_id int primary key,
    name varchar(50) NOT NULL,
    region_id int NOT NULL,
    foreign key (region_id) references Regions(region_id)
);

create table Products (
	product_id int primary key,
    product_name varchar(100) NOT NULL,
    category varchar(50) NOT NULL,
    price decimal(10,2) NOT NULL
);

create table Sales (
	sale_id int primary key,
    sale_date date NOT NULL,
    salesperson_id int NOT NULL,
	customer_id int NOT NULL,
	product_id int NOT NULL,
	quantity int NOT NULL,
    foreign key (salesperson_id) references Salespersons(salesperson_id),
    foreign key (customer_id) references Customers(customer_id),
    foreign key (product_id) references Products(product_id)
);

INSERT INTO Regions VALUES
(1, 'North'),
(2, 'South'),
(3, 'East'),
(4, 'West'),
(5, 'Central');

INSERT INTO Salespersons VALUES
(101, 'Aman Sharma', 1),
(102, 'Priya Mehta', 1),
(103, 'Karan Singh', 1),

(104, 'Rahul Verma', 2),
(105, 'Sneha Rao', 2),
(106, 'Deepak Nair', 2),

(107, 'Mohit Das', 3),
(108, 'Anjali Gupta', 3),
(109, 'Neeraj Bhatia', 3),

(110, 'Riya Malhotra', 4),
(111, 'Tanmay Kapoor', 4),
(112, 'Suresh Gowda', 4),

(113, 'Varun Arora', 5),
(114, 'Meena Chahal', 5),
(115, 'Arjun Gill', 5);

INSERT INTO Customers VALUES
(201, 'Rohit Kumar', 1),
(202, 'Simran Kaur', 1),
(203, 'Harpreet Singh', 1),
(204, 'Kavita Arora', 1),
(205, 'Naveen Malhotra', 1),
(206, 'Alisha Jain', 1),
(207, 'Jatin Verma', 1),
(208, 'Sunita Bansal', 1),

(209, 'Aditi Menon', 2),
(210, 'Prakash Reddy', 2),
(211, 'Yash Patel', 2),
(212, 'Ramesh Iyer', 2),
(213, 'Krishna Rao', 2),
(214, 'Mansi Shetty', 2),
(215, 'Neha Pillai', 2),
(216, 'Kiran Kumar', 2),

(217, 'Shreya Ghosh', 3),
(218, 'Ankit Roy', 3),
(219, 'Dev Das', 3),
(220, 'Pooja Dutta', 3),
(221, 'Ritu Saha', 3),
(222, 'Sourav Bose', 3),
(223, 'Tapan Sen', 3),
(224, 'Madhuri Paul', 3),

(225, 'Nikhil Thakur', 4),
(226, 'Rohan Shinde', 4),
(227, 'Snehal Patil', 4),
(228, 'Aarav Sharma', 4),
(229, 'Isha Dalal', 4),
(230, 'Kabir Walia', 4),
(231, 'Reema Chauhan', 4),
(232, 'Om Prakash', 4),

(233, 'Gurpreet Singh', 5),
(234, 'Diksha Chauhan', 5),
(235, 'Naina Bedi', 5),
(236, 'Vikas Saini', 5),
(237, 'Rahul Ahuja', 5),
(238, 'Anu Rajput', 5),
(239, 'Tarun Khanna', 5),
(240, 'Jasleen Kaur', 5);


INSERT INTO Products VALUES
(301, 'Laptop Pro 15', 'Electronics', 75000.00),
(302, 'Laptop Air 13', 'Electronics', 55000.00),
(303, 'Smartphone X', 'Electronics', 32000.00),
(304, 'Smartphone Lite', 'Electronics', 18000.00),

(305, 'Office Chair', 'Furniture', 7000.00),
(306, 'Standing Desk', 'Furniture', 15000.00),

(307, 'Bluetooth Earbuds', 'Accessories', 2500.00),
(308, 'Smartwatch S2', 'Accessories', 9000.00),

(309, 'Air Conditioner', 'Home Appliances', 38000.00),
(310, 'Washing Machine', 'Home Appliances', 28000.00),

(311, 'LED Monitor 27"', 'Electronics', 16000.00),

(312, 'Keyboard + Mouse Combo', 'Accessories', 1800.00);

INSERT INTO Sales VALUES
(1, '2024-01-05', 101, 201, 301, 1),
(2, '2024-01-07', 102, 203, 303, 2),
(3, '2024-01-09', 103, 204, 307, 3),
(4, '2024-01-12', 104, 210, 309, 1),
(5, '2024-01-15', 105, 214, 305, 2),
(6, '2024-01-18', 106, 215, 304, 1),
(7, '2024-01-20', 107, 218, 311, 2),
(8, '2024-01-22', 108, 221, 303, 1),
(9, '2024-01-25', 109, 222, 307, 4),
(10, '2024-02-02', 110, 225, 302, 1),
(11, '2024-02-04', 111, 229, 312, 3),
(12, '2024-02-06', 112, 231, 306, 1),
(13, '2024-02-09', 113, 236, 309, 1),
(14, '2024-02-12', 114, 239, 301, 1),
(15, '2024-02-14', 115, 240, 308, 2),

(16, '2024-03-01', 101, 202, 301, 1),
(17, '2024-03-03', 102, 205, 303, 1),
(18, '2024-03-06', 103, 208, 307, 2),
(19, '2024-03-09', 104, 212, 309, 1),
(20, '2024-03-12', 105, 213, 305, 1),
(21, '2024-03-15', 106, 216, 304, 3),
(22, '2024-03-17', 107, 217, 311, 1),
(23, '2024-03-20', 108, 224, 303, 2),
(24, '2024-03-24', 109, 220, 307, 1),
(25, '2024-04-01', 110, 227, 302, 1),
(26, '2024-04-03', 111, 232, 312, 3),
(27, '2024-04-06', 112, 231, 306, 2),
(28, '2024-04-09', 113, 233, 309, 1),
(29, '2024-04-11', 114, 236, 301, 1),
(30, '2024-04-14', 115, 238, 308, 2),

(31, '2024-04-18', 101, 207, 304, 1),
(32, '2024-04-20', 102, 203, 301, 2),
(33, '2024-04-22', 103, 205, 305, 1),
(34, '2024-04-25', 104, 209, 309, 1),
(35, '2024-04-27', 105, 211, 303, 2);



-- Total Revenue
SELECT SUM(p.price * s.quantity) AS total_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id;



-- Monthly Revenue Trend
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month,
       SUM(p.price * s.quantity) AS revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- Top 5 Selling Products by Revenue
SELECT p.product_name,
       SUM(s.quantity * p.price) AS revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_id
ORDER BY revenue DESC
LIMIT 5;

-- Top 5 Selling Products by Units
SELECT p.product_name,
       SUM(s.quantity) AS units_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_id
ORDER BY units_sold DESC
LIMIT 5;

-- Best Performing Region
SELECT r.region_name,
       SUM(s.quantity * p.price) AS revenue
FROM Sales s
JOIN Salespersons sp ON s.salesperson_id = sp.salesperson_id
JOIN Regions r ON sp.region_id = r.region_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY r.region_name
ORDER BY revenue DESC;

-- Best performing salesperson by revenue
SELECT sp.name,
       SUM(s.quantity * p.price) AS revenue
FROM Sales s
JOIN Salespersons sp ON s.salesperson_id = sp.salesperson_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY sp.salesperson_id
ORDER BY revenue DESC;

-- Most profitable product category
SELECT p.category,
       SUM(s.quantity * p.price) AS revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- Region-wise product performance
SELECT r.region_name, p.product_name,
       SUM(s.quantity) AS units_sold
FROM Sales s
JOIN Salespersons sp ON s.salesperson_id = sp.salesperson_id
JOIN Regions r ON sp.region_id = r.region_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY r.region_name, p.product_name
ORDER BY r.region_name, units_sold DESC;

-- Monthly salesperson performance
SELECT sp.name,
       DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
       SUM(s.quantity * p.price) AS revenue
FROM Sales s
JOIN Salespersons sp ON s.salesperson_id = sp.salesperson_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY sp.salesperson_id, month
ORDER BY month, revenue DESC;

-- Customer revenue contribution
SELECT c.name,
       SUM(s.quantity * p.price) AS revenue
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY revenue DESC
LIMIT 10;

-- Category-wise monthly trend
SELECT DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
       p.category,
       SUM(s.quantity * p.price) AS revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY month, p.category
ORDER BY month;

-- Average order value
SELECT AVG(p.price * s.quantity) AS avg_order_value
FROM Sales s
JOIN Products p ON s.product_id = p.product_id;




