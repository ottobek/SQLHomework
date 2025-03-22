# Lesson 3: Constraints. Importing and Exporting Data

✅ Importing Data Exporting Data
✅ Comments, Identity column, NULL/NOT NULL values
✅ Unique Key, Primary Key, Foreign Key, Check Constraint
✅ Differences between UNIQUE KEY and PRIMARY KEY

________________________________________

## 🟢 Easy-Level Tasks (10)
--1. Define and explain the purpose of BULK INSERT in SQL Server.

-- BULK INSERT is a SQL Server command that lets you efficiently import large amounts of data from a file into a database table. It's much faster than using multiple INSERT statements, especially when you need to import thousands or millions of records.

-- Creating a table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20)
); 

SELECT * from Customers 

-- Importing customer data from CSV file

BULK INSERT Customers
FROM 'D:\D.MAAB\Customers.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2  -- Skip the header row
);


--2. List four file formats that can be imported into SQL Server.

-- CSV, TXT, JSON, XML

--3. Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

--4. Insert three records into the Products table

INSERT INTO Products (ProductID, ProductName, Price)
VALUES (1, 'Laptop', 999.99);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES (2, 'Smartphone', 699.50);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES (3, 'Headphones', 149.99);

SELECT * from Products 

--5. Explain the difference between NULL and NOT NULL with examples.

-- NULL allows a column to have missing or unknown values
-- NOT NULL requires that every row must have a value for that column

-- Examples:

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL, -- Must always have a value
    Email VARCHAR(100) NULL             -- Can be empty/unknown
)


--6. Add a UNIQUE constraint to the ProductName column in the Products table.

ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

--7. Write a comment in a SQL query explaining its purpose.

-- Single-line comments (--) extend only to the end of the current line and perfect for brief explanations or annotations. 

/* Multi-line comments can span multiple lines of code. Begin with /* and end with */
Useful for longer explanations, documentation blocks, or temporarily disabling large sections of code.
*/

--8. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);

--9. Explain the purpose of the IDENTITY column in SQL Server.

/* 
The IDENTITY column in SQL Server automatically generates sequential numeric values for new rows in a table. It has several important purposes:

Auto-numbering: It automatically assigns a unique, sequential number to each new row without requiring you to manage this manually.
Simplifies inserts: You don't need to specify a value for this column when inserting new records - SQL Server handles it automatically.
Uniqueness: Helps ensure each row has a unique identifier.
Common syntax: IDENTITY(seed, increment)
- seed: The starting value (often 1)
- increment: How much to increase for each new row (typically 1) 
*/
______________________________________

## 🟠 Medium-Level Tasks (10)
--10. Use BULK INSERT to import data from a text file into the Products table.

DROP TABLE Products 
CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50) UNIQUE,
Price DECIMAL(10,2)
);

-- Now importing data from a CSV file

-- Importing additional product data from a CSV file into the existing Products table
BULK INSERT Products
FROM 'D:\D.MAAB\products.txt'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2  -- Skip the header row
);

SELECT * from Products 

--11. Create a FOREIGN KEY in the Products table that references the Categories table.

-- Adding a CategoryID column to the Products table
ALTER TABLE Products
ADD CategoryID INT;

-- Creating the FOREIGN KEY constraint
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID)
REFERENCES Categories (CategoryID);

SELECT * from Products 

--12. Explain the differences between PRIMARY KEY and UNIQUE KEY with examples

/*
Differences between PRIMARY KEY and UNIQUE KEY:

1. NULL values:
   - PRIMARY KEY: Cannot contain NULL values
   - UNIQUE KEY: Can contain NULL values (typically only one NULL)

2. Quantity per table:
   - PRIMARY KEY: Only one per table
   - UNIQUE KEY: Multiple allowed in a single table

3. Automatic indexing:
   - PRIMARY KEY: Creates a clustered index by default
   - UNIQUE KEY: Creates a non-clustered index by default

4. Purpose:
   - PRIMARY KEY: Meant to uniquely identify each row in the table
   - UNIQUE KEY: Ensures uniqueness but isn't necessarily the main identifier
*/

-- PRIMARY KEY example
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,  -- Cannot be NULL, only one PRIMARY KEY per table
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

DROP TABLE Students

-- UNIQUE KEY example

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,    -- Main identifier, cannot be NULL
    Email VARCHAR(100) UNIQUE,    -- Must be unique but could be NULL
    PhoneNumber VARCHAR(15) UNIQUE -- Another unique column, could be NULL
);

--13. Add a CHECK constraint to the Products table ensuring Price > 0

ALTER TABLE Products
ADD CONSTRAINT CHK_Products_Price_Positive CHECK (Price > 0);
SELECT * from Products 

--14. Modify the Products table to add a column Stock (INT, NOT NULL).

ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;

--15. Use the ISNULL function to replace NULL values in a column with a default value

-- Example using ISNULL in a SELECT statement 
SELECT 
    ProductID,
    ProductName,
    ISNULL(Price, 0) AS Price,  -- Shows 0 instead of NULL for missing prices
    Stock
FROM Products;

-- Example using ISNULL with string data
SELECT 
    ProductID,
    ISNULL(ProductName, 'Unknown Product') AS ProductName
FROM Products;

-- When using ISNULL in an UPDATE statement, be careful with foreign key constraints
-- For example, when updating CategoryID, make sure the value exists in Categories table:

-- First check if the default category exists
IF NOT EXISTS (SELECT 1 FROM Categories WHERE CategoryID = 1)
BEGIN
    -- If not, insert it first
    INSERT INTO Categories (CategoryID, CategoryName)
    VALUES (1, 'Default Category')
END

UPDATE Products
SET CategoryID = ISNULL(CategoryID, 1);

--16. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.

/* 
Foreign keys in SQL Server are like connections between tables. They make sure that when I add data to one table, I'm only using values that already exist in another table.
For example, if I have a Products table with a CategoryID column, a foreign key makes sure that I can only assign products to categories that actually exist in my Categories table. This prevents me from making mistakes like assigning a product to category 100 when I only have categories 1 through 5.
Foreign keys help me keep my data accurate by preventing invalid connections.  
*/
________________________________________

## 🔴 Hard-Level Tasks (10)
--17. Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.

DROP TABLE Customers 
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT NOT NULL,
    CONSTRAINT CHK_Customer_Age CHECK (Age >= 18)
);
SELECT * from Customers

--18. Create a table with an IDENTITY column starting at 100 and incrementing by 10.

CREATE TABLE Products_Inventory (
   ProductCode INT IDENTITY(100, 10) PRIMARY KEY,
   ProductName VARCHAR(50) NOT NULL,
   Category VARCHAR(30),
   StockLevel INT DEFAULT 0,
   LastRestocked DATETIME
);
SELECT * from Products_Inventory

--19. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.

CREATE TABLE OrderDetails (
   OrderID INT,
   ProductID INT,
   Quantity INT NOT NULL,
   UnitPrice DECIMAL(10,2) NOT NULL,
   Discount DECIMAL(4,2) DEFAULT 0,
   -- Creating a composite PRIMARY KEY from two columns
   CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderID, ProductID)
);

SELECT * from OrderDetails


--20. Explain with examples the use of COALESCE and ISNULL functions for handling NULL values.

/* 
COALESCE and ISNULL are both used to handle NULL values, but they work slightly differently:

1. ISNULL(check_expression, replacement_value)
  - Takes exactly 2 parameters
  - SQL Server specific
  - Returns the replacement value if check_expression is NULL

2. COALESCE(val1, val2, ..., valn)
  - Takes multiple parameters (2 or more)
  - Standard SQL function (works across different database systems)
  - Returns the first non-NULL value in the list
*/

-- Create a sample table for the examples

CREATE TABLE StaffMembers2025 (
   StaffID INT PRIMARY KEY,
   FirstName VARCHAR(50) NOT NULL,
   LastName VARCHAR(50) NOT NULL,
   MiddleName VARCHAR(50) NULL,
   Phone VARCHAR(20) NULL,
   EmergencyContact VARCHAR(20) NULL,
   Salary DECIMAL(10,2) NULL
);

-- Insert sample data
INSERT INTO StaffMembers2025 VALUES(1, 'John', 'Smith', NULL, '555-1234', NULL, 45000);
INSERT INTO StaffMembers2025 VALUES(2, 'Mary', 'Johnson', 'Elizabeth', NULL, '555-9876', NULL);
INSERT INTO StaffMembers2025 VALUES(3, 'Robert', 'Williams', NULL, NULL, NULL, 52000);

SELECT * from StaffMembers2025

-- Example 1: Basic ISNULL usage
SELECT 
   StaffID,
   FirstName,
   LastName,
   ISNULL(Phone, 'No phone provided') AS ContactPhone
FROM StaffMembers2025;

-- Example 2: Basic COALESCE usage
SELECT 
   StaffID,
   FirstName,
   LastName,
   COALESCE(Phone, EmergencyContact, 'No contact available') AS ContactNumber
FROM StaffMembers2025;

-- Example 3: Using COALESCE with multiple columns
-- Find any available contact method in priority order
SELECT 
   StaffID,
   FirstName + ' ' + COALESCE(MiddleName + ' ', '') + LastName AS FullName,
   COALESCE(Phone, EmergencyContact, 'No contact information') AS BestContactMethod
FROM StaffMembers2025;

-- Example 4: Using ISNULL in calculations
SELECT 
   StaffID,
   FirstName,
   LastName,
   Salary,
   ISNULL(Salary, 0) * 0.1 AS Bonus -- Prevents NULL result in calculation
FROM StaffMembers2025;

-- Example 5: Nested COALESCE for complex logic
SELECT 
   StaffID,
   FirstName,
   LastName,
   COALESCE(
       CASE WHEN Salary > 50000 THEN Phone END,
       EmergencyContact,
       'Contact HR department'
   ) AS ContactInfo
FROM StaffMembers2025;

--21. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.

DROP TABLE Employees

CREATE TABLE Employees (
   EmpID INT PRIMARY KEY,
   FirstName VARCHAR(50) NOT NULL,
   LastName VARCHAR(50) NOT NULL,
   Email VARCHAR(100) UNIQUE,
   Phone VARCHAR(20),
   Department VARCHAR(50),
   HireDate DATE DEFAULT GETDATE()
);

SELECT * from Employees

--22. Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.

CREATE TABLE Departments (
   DeptID INT PRIMARY KEY,
   DeptName VARCHAR(50) NOT NULL,
   Location VARCHAR(100)
);

-- Now create the child table with the CASCADE options
CREATE TABLE StaffMembers (
   StaffID INT PRIMARY KEY,
   FirstName VARCHAR(50) NOT NULL,
   LastName VARCHAR(50) NOT NULL,
   DeptID INT,
   Salary DECIMAL(10,2),
   -- Creating the FOREIGN KEY with CASCADE options
   CONSTRAINT FK_Staff_Department FOREIGN KEY (DeptID)
   REFERENCES Departments(DeptID)
   ON DELETE CASCADE    -- Automatically delete related staff when department is deleted
   ON UPDATE CASCADE    -- Automatically update staff records if department ID changes
);

SELECT * FROM Departments;
SELECT * FROM StaffMembers;
