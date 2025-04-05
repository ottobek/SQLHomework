Tables
1. CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'García', 77000.00),
(10, 1, 'William', 'Martínez', 69000.00);

2. CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Service'),
(8, 'R&D'),
(9, 'Legal'),
(10, 'Logistics');

3. CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES
(1, 1, 1, 1500.00, '2025-01-01'),
(2, 2, 2, 2000.00, '2025-01-02'),
(3, 3, 3, 1200.00, '2025-01-03'),
(4, 4, 4, 1800.00, '2025-01-04'),
(5, 5, 5, 2200.00, '2025-01-05'),
(6, 6, 6, 1400.00, '2025-01-06'),
(7, 7, 1, 2500.00, '2025-01-07'),
(8, 8, 2, 1700.00, '2025-01-08'),
(9, 9, 3, 1600.00, '2025-01-09'),
(10, 10, 4, 1900.00, '2025-01-10'),
(11, 1, 5, 2100.00, '2025-01-11'),
(12, 2, 6, 1300.00, '2025-01-12'),
(13, 3, 1, 2000.00, '2025-01-13'),
(14, 4, 2, 1800.00, '2025-01-14'),
(15, 5, 3, 1500.00, '2025-01-15'),
(16, 6, 4, 2200.00, '2025-01-16'),
(17, 7, 5, 1700.00, '2025-01-17'),
(18, 8, 6, 1600.00, '2025-01-18'),
(19, 9, 1, 2500.00, '2025-01-19'),
(20, 10, 2, 1800.00, '2025-01-20'),
(21, 1, 3, 1400.00, '2025-01-21'),
(22, 2, 4, 1900.00, '2025-01-22'),
(23, 3, 5, 2100.00, '2025-01-23'),
(24, 4, 6, 1600.00, '2025-01-24'),
(25, 5, 1, 1500.00, '2025-01-25'),
(26, 6, 2, 2000.00, '2025-01-26'),
(27, 7, 3, 2200.00, '2025-01-27'),
(28, 8, 4, 1300.00, '2025-01-28'),
(29, 9, 5, 2500.00, '2025-01-29'),
(30, 10, 6, 1800.00, '2025-01-30'),
(31, 1, 1, 2100.00, '2025-02-01'),
(32, 2, 2, 1700.00, '2025-02-02'),
(33, 3, 3, 1600.00, '2025-02-03'),
(34, 4, 4, 1900.00, '2025-02-04'),
(35, 5, 5, 2000.00, '2025-02-05'),
(36, 6, 6, 2200.00, '2025-02-06'),
(37, 7, 1, 2300.00, '2025-02-07'),
(38, 8, 2, 1750.00, '2025-02-08'),
(39, 9, 3, 1650.00, '2025-02-09'),
(40, 10, 4, 1950.00, '2025-02-10');

4. CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, CategoryID, ProductName, Price) VALUES
(1, 1, 'Laptop', 1000.00),
(2, 1, 'Smartphone', 800.00),
(3, 2, 'Tablet', 500.00),
(4, 2, 'Monitor', 300.00),
(5, 3, 'Headphones', 150.00),
(6, 3, 'Mouse', 25.00),
(7, 4, 'Keyboard', 50.00),
(8, 4, 'Speaker', 200.00),
(9, 5, 'Smartwatch', 250.00),
(10, 5, 'Camera', 700.00);


Easy Tasks

1.Find employees whose salary is above the average salary. (Derived Table)
2.Find employees who have the same salary as another employee. (CTE)
3.Get the number of employees in each department. (CTE)
4.Find employees whose salary is below the average salary. (Derived Table)
5.List products that have been sold at least twice. (CTE)
6.Find employees who made a single sale of more than $2000. (Derived Table)
7.Retrieve the most expensive product. (Derived Table)
8.Find the total sales made by each employee. (CTE)
9.Find employees who have sold a "Laptop." (CTE)
10.Find the highest-paid employee in each department. (Derived Table)

Medium Tasks

11.Find departments with no employees. (CTE)
12.Find employees who have made the same total sales as another employee. (CTE)
13.Find the total revenue generated per product category. (CTE)
14.Find the top 3 highest-paid employees per department. (Derived Table)
15.Find employees who have the highest number of sales transactions. (Derived Table)
16.Find employees who sold more than 3 different products. (CTE)
17.Find the department with the highest total salary. (Derived Table)
18.Find employees who made sales higher than their department's average sales. (Derived Table)

Difficult Tasks

19.Find employees whose total sales exceed their own salary. (Derived Table)
20.Find the department with the most sales transactions. (Derived Table)
21.Find the top-selling employee for each product. (Derived Table)



Tasks should be solved using SQL Server.
