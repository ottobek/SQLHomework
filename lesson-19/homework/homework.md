# SQL Homework Tasks: Window Functions and Ranking

This document contains SQL homework tasks focusing on window functions (such as ROW_NUMBER, RANK, DENSE_RANK, NTILE, LEAD, and LAG) and cumulative calculations. The tasks are divided into three difficulty levels: **Easy**, **Medium**, and **Difficult**.

---

## Easy Tasks (20)

1. Write a query to assign a row number to each employee in the **Employees** table ordered by their Salary.
2. Create a query to rank all products based on their Price in descending order.
3. Use the **DENSE_RANK()** function to rank employees by Salary in the **Employees** table.
4. Write a query to display the next (lead) salary for each employee in the same department using the **LEAD()** function.
5. Use **ROW_NUMBER()** to assign a unique number to each order in the **Orders** table.
6. Create a query using **RANK()** to identify the highest and second-highest salaries in the **Employees** table.
7. Write a query to show the previous (lagged) salary for each employee in the **Employees** table using the **LAG()** function.
8. Use **NTILE(4)** to divide employees into 4 groups based on their Salary.
9. Write a query to partition employees by **DepartmentID** and assign a row number within each department.
10. Use **DENSE_RANK()** to rank products by Price in ascending order.
11. Write a query to calculate the moving average of Price in the **Products** table using window functions.
12. Use the **LEAD()** function to display the salary of the next employee for each row in the **Employees** table.
13. Create a query to compute the cumulative sum of **SalesAmount** in the **Sales** table.
14. Use **ROW_NUMBER()** to identify the top 5 most expensive products in the **Products** table.
15. Write a query to partition the **Orders** table by **CustomerID** and calculate the total **OrderAmount** per customer.
16. Use **RANK()** to rank orders in the **Orders** table based on their **OrderAmount**.
17. Write a query to compute the percentage contribution of **SalesAmount** by **ProductCategory** in the **Sales** table.
18. Use the **LEAD()** function to retrieve the next order date for each order in the **Orders** table.
19. Write a query using **NTILE(3)** to divide employees into 3 groups based on their Age.
20. Use **ROW_NUMBER()** to list the most recently hired employees from the **Employees** table.

---

## Medium Tasks (20)

1. Write a query to compute the cumulative average salary of employees, ordered by Salary.
2. Use **RANK()** to rank products by their total sales while handling ties appropriately.
3. Create a query to retrieve the previous order's date for each order in the **Orders** table using the **LAG()** function.
4. Write a query to calculate the moving sum of Price for products with a window frame of 3 rows.
5. Use **NTILE(4)** to assign employees to four salary ranges and display each employee's salary range.
6. Write a query to partition the **Sales** table by **ProductID** and calculate the total **SalesAmount** per product.
7. Use **DENSE_RANK()** to rank products by **StockQuantity** without gaps in the ranking.
8. Create a query using **ROW_NUMBER()** to identify the second highest salary in each department.
9. Write a query to calculate the running total of sales for each product in the **Sales** table.
10. Use **LEAD()** to display the **SalesAmount** of the next row for each employee’s sale in the **Sales** table.
11. Use **RANK()** to determine the highest earners within each department.
12. Write a query to partition employees by **DepartmentID** and rank them by salary.
13. Use **NTILE(5)** to divide products into five groups based on their Price.
14. Write a query to calculate the difference between each employee's salary and the highest salary in their department.
15. Use **LAG()** to display the previous product's **SalesAmount** for each sale.
16. Write a query to calculate the cumulative sum of **OrderAmount** for each customer in the **Orders** table.
17. Use **ROW_NUMBER()** to identify the 3rd most recent order for each customer in the **Orders** table.
18. Write a query to partition employees by **DepartmentID** and rank them by their HireDate within each department.
19. Use **DENSE_RANK()** to find the 3rd highest Salary in each department from the **Employees** table.
20. Create a query using **LEAD()** to calculate the difference in **OrderDate** between consecutive orders.

---

## Difficult Tasks (20)

1. Write a query using **RANK()** to rank products by their sales (handling ties) but exclude the top 10% of products by sales.
2. Use **ROW_NUMBER()** to list employees with over 5 years of service, ordered by their HireDate.
3. Write a query using **NTILE(10)** to divide employees into 10 groups based on Salary and display each employee's group number.
4. Use the **LEAD()** function to calculate the next **SalesAmount** for each sale by an employee and compare it with the current sale.
5. Write a query to partition products by **CategoryID** and compute the average Price for each category.
6. Use **RANK()** to determine the top 3 most-sold products and display their rankings, including handling ties.
7. Create a query using **ROW_NUMBER()** to list the top 5 highest-paid employees from each department.
8. Write a query to compute the moving average of sales over a 5-day window using both **LEAD()** and **LAG()** functions.
9. Use **DENSE_RANK()** to find the products with the top 5 highest sales figures, ensuring no gaps in the ranking.
10. Write a query using **NTILE(4)** to partition orders by **OrderAmount** into four quartiles and display the quartile for each order.
11. Use **ROW_NUMBER()** to assign a unique sequence to each order in the **Orders** table and display the rank within each **CustomerID**.
12. Write a query to partition employees by **DepartmentID** and calculate the total number of employees in each department.
13. Use **RANK()** to list the top 3 highest salaries and the bottom 3 salaries within each department.
14. Create a query using **LAG()** to calculate the percentage change in **SalesAmount** from the previous sale for each employee.
15. Write a query to compute both the cumulative sum and cumulative average of sales for each product in the **Sales** table.
16. Use **NTILE(3)** to rank employees by Age and display the distribution of age groups across the company.
17. Write a query using **ROW_NUMBER()** to identify the top 10 employees with the highest sales, sorted by **SalesAmount**.
18. Use **LEAD()** to calculate the difference between each product's Price and the Price of the subsequent product in the **Products** table.
19. Create a query using **DENSE_RANK()** to rank employees based on a performance score and generate a performance report.
20. Write a query using both **LAG()** and **LEAD()** to determine the difference in **SalesAmount** for each product relative to the previous and next orders in the **Orders** table.
