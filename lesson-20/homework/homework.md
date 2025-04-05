# SQL Homework Tasks: Window Functions & Cumulative Calculations

This document contains SQL homework tasks focusing on window functions and cumulative calculations. The tasks are divided into three difficulty levels: **Easy**, **Medium**, and **Difficult**. Some table and column names have been adjusted to provide variety.

---

## Easy Tasks (20)

1. Write a query to calculate the running total of `SalesAmount` for each product in the **Sales** table, ordered by `SaleDate`.
2. Use the `SUM()` aggregate window function to calculate the cumulative sum of `Amount` for each customer in the **Orders** table.
3. Write a query to find the running total of `OrderAmount` in the **Orders** table, partitioned by `CustomerID`.
4. Use the `AVG()` window function to calculate the average sales amount up to the current row for each product in the **Sales** table.
5. Write a query to rank each order’s `OrderAmount` using the `RANK()` window function.
6. Use the `LEAD()` function to retrieve the next row's `Amount` for each product in the **Sales** table.
7. Write a query to calculate the total sales for each customer in the **Orders** table using the `SUM()` function as a window function.
8. Use the `COUNT()` function to determine the number of orders placed up to the current row in the **Orders** table.
9. Write a query to partition the **Sales** table by `ProductCategory` and calculate the running total of `SalesAmount` for each category.
10. Use `ROW_NUMBER()` to assign a unique rank to each order in the **Orders** table, ordered by `OrderDate`.
11. Write a query using `LAG()` to find the `OrderAmount` from the previous row for each order in the **Orders** table.
12. Use `NTILE(4)` to divide products in the **Products** table into 4 equal groups based on `Price`.
13. Write a query using `SUM()` to calculate the cumulative total of sales for each salesperson in the **Sales** table.
14. Use `DENSE_RANK()` to rank the products in the **Products** table based on `StockQuantity`.
15. Write a query to compute the difference between the current and next `OrderAmount` in the **Orders** table using `LEAD()`.
16. Use `RANK()` to assign a rank to products in the **Products** table, ordered by `Price`.
17. Write a query using `AVG()` to calculate the average order amount for each customer in the **Orders** table.
18. Use `ROW_NUMBER()` to assign a unique row number to each employee in the **Employees** table, ordered by `Salary`.
19. Write a query to partition the **Sales** table by `StoreID` and calculate the cumulative sum of `SalesAmount` for each store.
20. Use `LAG()` to find the previous order's `OrderAmount` in the **Orders** table.

---

## Medium Tasks (20)

1. Write a query using `SUM()` to calculate the cumulative sum of `SalesAmount` for each employee in the **Sales** table.
2. Use `LEAD()` to calculate the difference in `OrderAmount` between the current row and the next row in the **Orders** table.
3. Write a query to find the top 5 products based on `SalesAmount` using `ROW_NUMBER()` in the **Sales** table.
4. Use `RANK()` to determine the products with the top 10 sales in the **Products** table, ordered by `SalesAmount`.
5. Write a query using `COUNT()` to calculate the number of orders per product in the **Sales** table.
6. Write a query using `SUM()` to calculate the running total of `SalesAmount` for each `ProductCategory`.
7. Use `DENSE_RANK()` to rank employees in the **Employees** table by `Salary` within each `DepartmentID`.
8. Write a query to calculate the moving average of `SalesAmount` for each product in the **Sales** table.
9. Use `NTILE(3)` to divide products in the **Products** table into 3 groups based on their `Price`.
10. Write a query using `LAG()` to find the previous `SalesAmount` for each employee’s sale.
11. Write a query to compute the cumulative sum of `SalesAmount` for each salesperson, ordered by `SaleDate`.
12. Use `LEAD()` to retrieve the `SalesAmount` of the next sale for each product in the **Sales** table.
13. Write a query to calculate the moving sum of `SalesAmount` for each product in the **Products** table using a window function.
14. Use `RANK()` to identify the employees with the top 3 salaries in the **Employees** table.
15. Write a query using `AVG()` to calculate the average order amount for each customer in the **Orders** table.
16. Use `ROW_NUMBER()` to assign a unique row number to orders in the **Orders** table, ordered by `OrderDate`.
17. Write a query using `SUM()` to calculate the running total of `SalesAmount` for each employee in the **Sales** table, partitioned by `DepartmentID`.
18. Use `NTILE(5)` to divide the employees in the **Employees** table into 5 equal groups based on their `Salary`.
19. Write a query to calculate both the cumulative sum of `SalesAmount` and the total sales for each product in the **Sales** table.
20. Use `DENSE_RANK()` to identify the products with the top 5 highest `SalesAmount` in the **Sales** table.

---

## Difficult Tasks (20)

1. Write a query using `SUM()` to calculate the running total of `SalesAmount` for each product and store in the **Sales** table.
2. Use `LEAD()` to calculate the percentage change in `OrderAmount` between the current and next row in the **Orders** table.
3. Write a query using `ROW_NUMBER()` to return the top 3 products by `SalesAmount`, ensuring ties are handled appropriately.
4. Use `RANK()` to assign a rank to each employee in the **Employees** table based on `Salary`, partitioned by `DepartmentID`.
5. Write a query to find the top 10% of orders in the **Orders** table based on `OrderAmount` using the `NTILE()` function.
6. Use `LAG()` to calculate the change in `SalesAmount` between the previous and current sale for each product in the **Sales** table.
7. Write a query to compute the cumulative average of `SalesAmount` for each product, ordered by `SaleDate`.
8. Use `DENSE_RANK()` to identify the products with the top 5 highest `SalesAmount` in the **Products** table, ignoring ties.
9. Write a query to partition the **Sales** table by `ProductCategory` and calculate the running total of `SalesAmount` for each category.
10. Use both `LEAD()` and `LAG()` together to find the difference in `OrderAmount` between the previous and next rows in the **Orders** table.
11. Write a query using `SUM()` to calculate the cumulative total of `SalesAmount` for each salesperson, ordered by `SaleDate`.
12. Use `NTILE(10)` to divide the products in the **Products** table into 10 groups based on `Price`.
13. Write a query to compute the moving average of `OrderAmount` in the **Orders** table using `AVG()` and an appropriate window frame.
14. Use `ROW_NUMBER()` to rank employees by `Salary` within each department in the **Employees** table.
15. Write a query using `COUNT()` to calculate the number of orders per customer in the **Orders** table.
16. Use `RANK()` to identify the products with the top 3 highest sales numbers in the **Sales** table, considering ties.
17. Write a query to compute the cumulative sales total for each employee and product in the **Sales** table.
18. Use `DENSE_RANK()` to identify the employees with the highest sales within each department in the **Sales** table.
19. Write a query to partition the **Sales** table by `StoreID` and calculate the cumulative total of `SalesAmount` for each store.
20. Use `LAG()` to calculate the difference in `SalesAmount` for each product between the previous and current sale in the **Sales** table.
