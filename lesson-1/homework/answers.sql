-- Introduction to SQL Server and SSMS 

-- EASY

-- 1. Define the following terms: data, database, relational database, and table.

-- Data is a piece of information that in isolation may not carry any meaning (unlike information). It can be digits, text or symbols. 
-- Database is comprised of data and unlike text that we know it through books, for example, database usually consists of tables. 
-- Database is comprised of data and unlike text that we know it through books, for example, database (one word) usually consists of tables. 
-- In a relational database, each table represents a specific entity or concept and they are connected to each other through relationships. For instance, you might have an Employees table, a Departments table, and a Projects table that are linked together.

-- 2. List five key features of SQL Server. 
-- SQL Server is like a brain for your data. Because: It stores vast amounts of information. It can process complex questions about that information. It can make connections between different pieces. 
-- Serves as a query language - SQL Server uses SQL (Structured Query Language) to let you ask questions about your data.
-- Serves as a data storage: SQL Server can handle huge amounts of data organized in tables.
-- SQL Server is well-integrated with other Microsoft products. 

-- 3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
-- Windows Authentication - it uses your Windows login credentials to access SQL Server. 
-- SQL Server Authentication  - it uses username and password to access SQL Server. 

-- MEDIUM 

-- 4. Create a new database in SSMS named SchoolDB. 
-- Opened SQL Server Management Studio and connected to my SQL Server instance. In the Object Explorer panel, right-clicked on the "Databases" folder. Selected "New Database..." from the context menu. In the "New Database" dialog box, entered "SchoolDB". Clicked the "OK" button. 

-- 5. Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT). 
CREATE TABLE dbo.Students_2025(
    StudentID int PRIMARY KEY,
    Name varchar(50),
    Age int
);

-- Insert multiple students at once
INSERT INTO dbo.Students_2025 (StudentID, Name, Age)
VALUES 
(1, 'Aziz', 30),
(2, 'Maria', 25),
(3, 'John', 22);

-- 6. Describe the differences between SQL Server, SSMS, and SQL.

-- SQL (Structured Query Language) is a programming language used across various database platforms to perform operations like querying, updating, and managing databases. SQL Server is Microsoft's relational database management system that stores, processes, and secures data while providing mechanisms for data retrieval and manipulation. SSMS (SQL Server Management Studio) is a software tool with a graphical interface that allows users to configure, manage, and administer all components within Microsoft SQL Server.

-- HARD

-- 7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples. 

-- SQL commands fall into five main categories: DQL (Data Query Language) which includes commands like SELECT and FROM that retrieve data from the database; DML (Data Manipulation Language) comprising INSERT, UPDATE, and DELETE for adding, modifying, or removing data in tables; DDL (Data Definition Language) with commands like CREATE, ALTER, DROP, and TRUNCATE that create, modify, or remove database structures; DCL (Data Control Language) consisting of GRANT and REVOKE which manage user permissions and access rights; and TCL (Transaction Control Language) containing COMMIT, ROLLBACK, and SAVEPOINT that manage transaction processing in databases. 

-- 8. Write a query to insert three records into the Students table. 

INSERT INTO dbo.Students_2025 (StudentID, Name, Age)
VALUES 
(1, 'Aziz', 30),
(2, 'Maria', 25),
(3, 'John', 22);

-- 9. Create a backup of your SchoolDB database and restore it. (write its steps to submit) 

-- I opened SQL Server Management Studio and connected to my SQL Server instance. 2. I right-clicked on the SchoolDB database in Object Explorer and selected "Tasks" → "Back Up...". 3. In the backup dialog box, I confirmed "Database: SchoolDB" appeared at the top, kept the backup type as "Full", and accepted the default destination. 4. I clicked OK to start the backup process and received a confirmation message when it completed. 5. To restore the database, I right-clicked on the "Databases" node in Object Explorer and selected "Restore Database...". 6. I entered "SchoolDB" in the "To database:" field, selected "Device" as the source, clicked the browse button, and navigated to my backup file. 7. I checked "Overwrite the existing database" option on the Options page, clicked OK to begin restoration, and received a confirmation message when the restore was complete.

