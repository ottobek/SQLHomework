-- Lesson 2: DDL and DML Commands

-- 1. Create a table `Employees` with columns: `EmpID` INT, `Name` (VARCHAR(50)), and `Salary` (DECIMAL(10,2)).  
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY, -- Added PRIMARY KEY constraint to prevent duplicates
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);
SELECT * FROM Employees
-- 2. Insert three records into the `Employees` table using different INSERT INTO approaches.
-- Single row insert with column names
INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'Alijon Valiev', 1500);

-- Multiple row insert
INSERT INTO Employees (EmpID, Name, Salary)
VALUES 
(3, 'Sora Eshonturyeva', 1200),
(4, 'Vohid Qodirov', 1600),
(5, 'Ergash Karimov', 2100);

-- 3. Update the `Salary` of an employee where `EmpID = 1`.
UPDATE Employees
SET Salary = 1800
WHERE EmpID = 1;

-- 4. Delete a record from the `Employees` table where `EmpID = 2`.
DELETE FROM Employees
WHERE EmpID = 2;

-- Verify the final table state
SELECT * FROM Employees;

-- 5. Demonstrate the difference between `DELETE`, `TRUNCATE`, and `DROP` commands on a test table.  
-- DELETE removes row data using WHERE clause. Works faster than TRUNCATE. TRUNCATE removes all row data at once. Works faster than DELETE. Both DELETE and TRUNCATE keeps table structure intact. DROP completely removes the table structure and data. 
-- Create a test table for demonstration
CREATE TABLE TestTable (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insert some sample data
INSERT INTO TestTable (name) VALUES 
('Record 1'),
('Record 2'),
('Record 3'),
('Record 4'),
('Record 5');

-- DELETE specific records with a WHERE clause
DELETE FROM TestTable WHERE id > 3;

-- See the result - only records with id ≤ 3 remain
SELECT * FROM TestTable;

-- Reinsert some data
INSERT INTO TestTable (name) VALUES 
('Record 6'),
('Record 7');

-- See the result 
SELECT * FROM TestTable;

-- TRUNCATE removes all records in one operation
TRUNCATE TABLE TestTable;

-- See the result - table exists but has no data
SELECT * FROM TestTable;

-- Insert new data after TRUNCATE
INSERT INTO TestTable (name) VALUES 
('New Record 1'),
('New Record 2');

-- See the result - auto-increment/identity is reset
SELECT * FROM TestTable;

-- DROP command demonstration
-- DROP completely removes the table structure and data
DROP TABLE TestTable;
SELECT * FROM TestTable;

-- Re-create the table to show that it's completely gone
CREATE TABLE TestTable (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM TestTable;
-- Insert data into the new table
INSERT INTO TestTable (name) VALUES ('After DROP');

-- See the result 
SELECT * FROM TestTable;

-- Modify the `Name` column in the `Employees` table to `VARCHAR(100)`.  
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);
-- See the result 
SELECT * FROM Employees;

-- 7. Add a new column `Department` (`VARCHAR(50)`) to the `Employees` table.  
ALTER TABLE Employees
ADD Department VARCHAR(50);

SELECT * FROM Employees;

-- 8. Change the data type of the `Salary` column to `FLOAT`.  

ALTER TABLE Employees ALTER COLUMN Salary FLOAT;
SELECT * FROM Employees;

-- 9. Create another table `Departments` with columns `DepartmentID` (INT, PRIMARY KEY) and `DepartmentName` (VARCHAR(50)). 

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

SELECT * FROM Departments;

-- 10. Remove all records from the `Employees` table without deleting its structure.  

TRUNCATE TABLE Employees;
---

### **Intermediate-Level Tasks (6)**  

-- Just adding some records to the Employees table 

INSERT INTO Employees (EmpID, Name, Salary, Department)
VALUES 
(1, 'Alijon Valiev', 1800, 'HR'),
(2, 'Malika Fozilova', 1700, 'Finance'),
(3, 'Sora Eshonturyeva', 1200, 'Marketing'),
(4, 'Vohid Qodirov', 1600, 'IT'),
(5, 'Ergash Karimov', 2100, 'Operations');

SELECT * FROM Employees;

-- 11. Insert five records into the `Departments` table using `INSERT INTO SELECT` from an existing table.  

DROP TABLE IF EXISTS Departments;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Now insert the department data
INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 
    ROW_NUMBER() OVER (ORDER BY Department) AS DepartmentID,
    Department AS DepartmentName
FROM (
    SELECT DISTINCT Department 
    FROM Employees
    WHERE Department IS NOT NULL
) AS DistinctDepts;

SELECT * FROM Departments;



-- 12. Update the `Department` of all employees where `Salary > 5000` to 'Management'. 

--adding two employees with salary above 5000
INSERT INTO Employees (EmpID, Name, Salary, Department)
VALUES 
(6, 'Qodir Vohidov', 5500, 'IT'),
(7, 'Karim Ergashev', 5700, 'Operations');
-- checking results
SELECT * FROM Employees;
-- updating the `Department` of all employees where `Salary > 5000` to 'Management' 
UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;
SELECT * FROM Employees;



-- 13. Write a query that removes all employees but keeps the table structure intact.   

TRUNCATE TABLE Employees;

-- 14. Drop the `Department` column from the `Employees` table.   

ALTER TABLE Employees
DROP COLUMN Department;

-- 15. Rename the `Employees` table to `StaffMembers` using SQL commands.  

EXEC sp_rename 'Employees', 'StaffMembers';
SELECT * FROM StaffMembers;

-- 16. Write a query to completely remove the `Departments` table from the database.  

DROP TABLE Departments;


---

### **Advanced-Level Tasks (9)**        
-- 17. Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Manufacturer VARCHAR(100)
);

SELECT * FROM Products;


-- 18. Add a CHECK constraint to ensure Price is always greater than 0.

ALTER TABLE Products
ADD CONSTRAINT CHK_PositivePrice CHECK (Price > 0);

SELECT * FROM Products;


-- 19. Modify the table to add a StockQuantity column with a DEFAULT value of 50.

INSERT INTO Products (ProductID, ProductName, Category, Price, Manufacturer) 
VALUES (1, 'Laptop', 'Electronics', 999.99, 'TechCo');
SELECT * FROM Products;

-- 20. Rename Category to ProductCategory

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
SELECT * FROM Products;

-- 21. Insert 5 records into the Products table using standard INSERT INTO queries.


-- 21. Insert 5 records into the Products table using standard INSERT INTO queries.
DELETE FROM Products; -- Clear existing records first

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Manufacturer) 
VALUES 
(1, 'Laptop Pro', 'Electronics', 1299.99, 'TechCo'),
(2, 'Wireless Headphones', 'Electronics', 199.50, 'SoundWave'),
(3, 'Smart Watch', 'Wearables', 249.99, 'FitTech'),
(4, 'Ergonomic Chair', 'Office Furniture', 399.00, 'ComfortDesigns'),
(5, 'Bluetooth Speaker', 'Electronics', 89.99, 'SoundBlast');

SELECT * FROM Products;

-- 22. Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
SELECT * INTO Products_Backup FROM Products;

SELECT * FROM Products_Backup;

-- 23. Renaming the Products table to Inventory.
EXEC sp_rename 'Products', 'Inventory';

SELECT * FROM Inventory;



-- 24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
-- First dropping the CHECK constraint
ALTER TABLE Inventory
DROP CONSTRAINT CHK_PositivePrice;

-- Then altering the column data type
ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;

-- Re-adding the CHECK constraint
ALTER TABLE Inventory
ADD CONSTRAINT CHK_PositivePrice CHECK (Price > 0);

SELECT * FROM Inventory;

-- 25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5.
ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);

SELECT * FROM Inventory;

