Lesson 21 Homework

MERGE Practice

Task 1: Basic MERGE Operation

Scenario: You have two tables, Employees (target) and NewEmployees (source). You need to:

Use the MERGE statement to update Employees where EmployeeID matches.

Insert new records from NewEmployees into Employees where no match is found.


Task 2: Delete Records with MERGE

Scenario: You have two tables, OldProducts (target) and CurrentProducts (source). You need to:

Use the MERGE statement to delete records from OldProducts where the ProductID does not exist in CurrentProducts.


Task 3: MERGE with Conditional Updates

Scenario: You have two tables, Employees (target) and NewSalaryDetails (source). You need to:

Use the MERGE statement to update the salary of employees only if the new salary is greater than the existing salary.


Task 4: MERGE with Multiple Conditions

Scenario: You have two tables, Orders (target) and NewOrders (source). You need to:

Use the MERGE statement to update OrderAmount for existing orders.

Insert new orders where the OrderID does not exist in the target.

Ensure the update happens only if the CustomerID is the same and the new OrderAmount is greater than the existing one.


Task 5: MERGE with Data Validation and Logging

Scenario: You have three tables: StudentRecords (target), NewStudentRecords (source), and MergeLog (logging table). You need to:

Insert new student records into StudentRecords if Age > 18.

Log the insertion or update action in the MergeLog table.



---

View and Function Practice

Task 1: Aggregated Sales Summary

Create a view named SalesSummary that shows the total sales amount and the number of orders for each customer.

Task 2: Employee Department Details

Create a view named EmployeeDepartmentDetails that combines employee and department information.

Task 3: Product Inventory Status

Create a view named InventoryStatus that shows product availability information.

Task 4: Simple Scalar Function

Write a scalar function fn_GetFullName that concatenates a person's first and last name into a single string.

Task 5: Inline Table-Valued Function

Create an inline table-valued function fn_GetHighSales that returns sales above a given threshold.

Task 6: Multi-Statement Table-Valued Function

Create a function fn_GetCustomerStats that calculates statistics for customers based on their transactions.


---

Window Functions in SQL

Task 1: Explaining the Importance of Window Functions

Explain why window functions might be more efficient than using subqueries or temporary tables when calculating cumulative sales.

Task 2: Syntax of Window Functions

Write an SQL query to calculate cumulative sales using the SUM window function.

Calculate the average salary for each department using window functions and compare with GROUP BY.


Task 3: Partition By vs Group By

Create a query using PARTITION BY to calculate cumulative revenue for each product category.

Compare it with a query using GROUP BY.


Task 4: ROW_NUMBER, RANK, and DENSE_RANK

Use ROW_NUMBER to assign a unique rank to students based on test scores.

Modify the query to use RANK and DENSE_RANK, then compare results.


Task 5: LEAD and LAG Functions

Use LAG to calculate the price change compared to the previous day in a stock prices table.

Use LEAD to calculate the price change compared to the next day.


Task 6: NTILE Function

Divide customers into 4 quartiles based on total spending using NTILE(4).

Compare the distribution using NTILE(5) for quintiles.

