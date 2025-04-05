# SQL Homework Tasks: Alternative Code Queries and Table Names

This document contains SQL homework tasks divided into three difficulty levels. In these tasks, traditional table names (such as Employees, Orders, and Customers) have been replaced with alternative names (e.g., Staff, Purchases, Clients, Items) and some query descriptions have been reworded to provide a different perspective.

---

## Easy Tasks (20)

1. Write a simple SELECT statement using a view named **vwStaff** to list all staff members from the **Staff** table.
2. Create a view **vwItemPrices** that displays all items along with their prices from the **Items** table.
3. Write a query to create a temporary table called **#TempPurchases** and insert sample data into it.
4. Declare a temporary variable `@currentRevenue` to store the total revenue for the current month.
5. Write a scalar function named **fnSquare** that accepts a numeric input and returns its square.
6. Create a stored procedure **spGetClients** to return the list of all clients from the **Clients** table.
7. Write a query that uses the MERGE statement to combine data from **Purchases** and **Clients**.
8. Create a temporary table **#StaffInfo** to hold staff details and insert sample rows into it.
9. Write a function **fnEvenOdd** that takes a numeric parameter and returns a string indicating whether the number is "Even" or "Odd."
10. Create a stored procedure **spMonthlyRevenue** that calculates the total revenue for a specified month and year.
11. Write a query to create a view **vwRecentItemSales** that shows the total sales per item for the last month.
12. Declare a temporary variable `@currentDate` to hold the current date and then print it.
13. Create a view **vwHighQuantityItems** that lists items with quantities greater than 100 from the **Items** table.
14. Write a query to create a temporary table **#ClientOrders** and join it with the **Purchases** table to display client orders.
15. Create a stored procedure **spStaffDetails** that takes a staff ID as a parameter and returns the staff member’s name and department.
16. Write a simple function **fnAddNumbers** that takes two numeric parameters and returns their sum.
17. Write a MERGE statement to update the **Items** table with new pricing data sourced from a temporary table **#NewItemPrices**.
18. Create a view **vwStaffSalaries** that displays staff names along with their salaries.
19. Write a stored procedure **spClientPurchases** that returns all purchases for a specific client given the client ID.
20. Write a function **fnStringLength** that returns the length of a given string parameter.

---

## Medium Tasks (20)

1. Create a view **vwClientOrderHistory** that shows all purchases made by a specific client, including the purchase dates.
2. Write a query to create a temporary table **#YearlyItemSales** that stores item sales data for the current year.
3. Develop a stored procedure **spUpdatePurchaseStatus** that accepts a purchase ID and updates its status.
4. Write a MERGE statement to insert new records into the **Purchases** table if they don’t exist, or update them if they do.
5. Declare a temporary variable `@avgItemSale` that stores the average sale amount for a particular item.
6. Create a view **vwItemOrderDetails** that combines data from **Purchases** and **Items** to display item names and quantities ordered.
7. Write a function **fnCalcDiscount** that computes a discount amount based on a given percentage for an order.
8. Create a stored procedure **spDeleteOldPurchases** to delete records of purchases older than a specified date.
9. Write a MERGE statement that updates staff salaries in the **Staff** table based on new data from a temporary table **#SalaryUpdates**.
10. Create a view **vwStaffRevenue** that displays the total revenue per staff member by joining the **Staff** and **Sales** (or **Revenue**) tables.
11. Write a function **fnWeekdayName** that takes a date as input and returns the corresponding weekday.
12. Create a temporary table **#TempStaff** to store staff data and use an `INSERT INTO ... SELECT` statement to populate it from another table.
13. Write a query that uses a temporary variable to store and then display a client's total number of purchases.
14. Create a stored procedure **spClientDetails** that accepts a client ID and returns full details of the client along with their purchase history.
15. Write a MERGE statement to update stock quantities in the **Items** table based on incoming data from a **Delivery** table.
16. Create a stored procedure **spMultiply** that takes two numeric parameters, calculates their product, and returns the result.
17. Write a function **fnCalcTax** to compute the sales tax for a given purchase amount.
18. Create a view **vwTopPerformingStaff** that combines staff and purchase data to show which staff members have fulfilled the most orders.
19. Write a MERGE statement to synchronize the **Clients** table with new records from a temporary data source **#ClientDataTemp**.
20. Create a stored procedure **spTopItems** to return the top 5 best-selling items.

---

## Difficult Tasks (20)

1. Write a stored procedure **spTopSalesStaff** to determine the staff member with the highest total revenue in a given year.
2. Create a view **vwClientOrderStats** that shows the number of purchases per client and the total purchase value.
3. Write a MERGE statement to synchronize two tables, **Purchases** and **Items**, with both updates and inserts based on the latest sales data.
4. Create a function **fnMonthlyRevenue** that returns the total revenue for a specific year and month.
5. Write a complex stored procedure **spProcessOrderTotals** that accepts multiple parameters, calculates order totals, and then updates the order status accordingly.
6. Create a temporary table **#StaffSalesData** that joins staff records with their respective sales figures and use it in a subsequent calculation.
7. Write a MERGE statement to manage updates and deletions from a temporary table **#SalesTemp** into the main **Sales** table.
8. Create a stored procedure **spOrdersByDateRange** that accepts a start and end date, returning all purchases made within that period.
9. Write a function **fnCompoundInterest** to calculate compound interest for an investment given a rate, principal, and time period.
10. Create a view **vwQuotaExceeders** that lists all staff members who have exceeded their sales quotas, along with their total sales.
11. Write a stored procedure **spSyncProductStock** that merges two tables—one containing product details and one with stock levels—and updates stock quantities based on new inputs.
12. Write a MERGE statement to update staff records by comparing current data with new information provided in an external data file.
13. Create a function **fnDateDiffDays** that accepts two dates and returns the number of days between them.
14. Write a complex stored procedure **spUpdateItemPrices** that adjusts product prices based on sales data, and then returns the updated price list.
15. Write a MERGE statement that compares client data and synchronizes the **Clients** table with a temporary data source.
16. Create a stored procedure **spRegionalSalesReport** that returns a summary report of total revenue per region, including average sales and sales per staff member.
17. Write a function **fnProfitMargin** that calculates the profit margin for each item in a purchase.
18. Create a temporary table **#TempStaffMerge** and write a query to merge its data into the **Staff** table based on matching staff IDs.
19. Write a stored procedure **spBackupData** to create backup copies of critical data from one table to another before performing deletions.
20. Create a stored procedure **spTopSalesReport** that generates a ranked report of the top 10 staff members based on sales performance, including both their ranking and total sales.
