# SQL Homework Tasks: Subqueries Challenge

This document contains SQL homework tasks focusing on subqueries, divided into three difficulty levels. In these tasks, some table names and column identifiers have been altered (e.g., Products → Items, Employees → Staff, Orders → Purchases, OrderDetails → PurchaseDetails, Departments → Divisions, Customers → Clients) to provide a different flavor and avoid typical naming conventions.

---

## Easy Tasks (20)

1. Write a simple subquery to list all items in the **Items** table where the price is greater than the average price of all items.
2. Create a query using an independent subquery to find staff members who have worked in a division that employs more than 10 people.
3. Write a query that uses a correlated subquery to list all staff members whose salary exceeds the average salary in their respective division.
4. Use a subquery to find all clients who have made a purchase in the **Purchases** table.
5. Write a query that uses the **EXISTS** operator to retrieve all purchases that include at least one detail in the **PurchaseDetails** table.
6. Create a subquery to list all items that have been sold more than 100 times according to the **PurchaseDetails** table.
7. Use a subquery to list all staff members who earn more than the overall company’s average salary.
8. Write a subquery to find all vendors that supply items with a price below $50.
9. Use a subquery to determine the maximum item price in the **Items** table.
10. Write a query using an independent subquery to find the highest total purchase value in the **Purchases** table.
11. Write a subquery to list clients who have never made a purchase.
12. Use a subquery to list all items that belong to the category "Electronics."
13. Write a subquery to list all purchases that were made after a specified date.
14. Create a subquery to calculate the total number of items sold in a particular purchase.
15. Write a query to list staff members who have been employed for more than 5 years.
16. Use a correlated subquery to list staff members who earn more than the average salary in their division.
17. Write a query using the **EXISTS** operator to list purchases that include an item from the **Items** table.
18. Create a subquery to find clients who have made a purchase within the last 30 days.
19. Write a query using a subquery to identify the oldest item in the **Items** table.
20. Write a query to list staff members who are not assigned to any division.

---

## Medium Tasks (20)

1. Use a correlated subquery to find all staff who work in the same division as any staff member earning over $100,000.
2. Write a query to list all staff members who have the highest salary in their division using a subquery.
3. Create a subquery to list all clients who have made purchases but have never bought an item priced above $200.
4. Write a query that uses a correlated subquery to find items that have been ordered more frequently than the average item.
5. Write a subquery to list clients who have placed more than 3 purchases.
6. Use a subquery to calculate the number of items ordered in the last 30 days by each client.
7. Create a correlated subquery to list staff whose salary exceeds the average salary of all staff in their division.
8. Write a query that uses a subquery to list items that have never been ordered.
9. Create a subquery to list all vendors who supply items priced above the average price of items.
10. Write a subquery to compute the total sales for each item in the past year.
11. Write a correlated subquery to list staff members older than the overall average age of the company.
12. Write a query to list items with a price greater than the average price in the **Items** table.
13. Use a subquery to find clients who have purchased items from a specific category.
14. Create a subquery to list all items with a quantity available greater than the average stock level.
15. Write a correlated subquery to list all staff who work in the same division as those who have received a bonus.
16. Write a query using a subquery to list staff members with salaries in the top 10% of all staff.
17. Create a correlated subquery to identify the division that employs the most staff.
18. Write a subquery to find the purchase with the highest total value.
19. Use a correlated subquery to list staff who earn more than the average salary of their division and have more than 5 years of service.
20. Create a query to list clients who have never purchased an item with a price higher than $100.

---

## Difficult Tasks (20)

1. Write a correlated subquery to list all staff who earn more than the average salary in their division, excluding the staff member with the highest salary in that division.
2. Use a subquery to list items that have been purchased by clients who have placed more than 5 orders.
3. Create a query to list all staff who are older than the overall average age and earn more than the average company salary.
4. Use a correlated subquery to list staff who work in a division that has more than 5 staff members earning over $100,000.
5. Write a subquery to list all items that have not been purchased by any client in the past year.
6. Create a query to list all clients who have made purchases that include items from at least two different categories.
7. Write a correlated subquery to list staff who earn more than the average salary of staff in the same job position.
8. Use a subquery to list items that are in the top 10% by price among all items.
9. Write a query that uses a correlated subquery to list staff whose salary is in the top 10% within their division.
10. Create a subquery to list all staff who have not received any bonus in the last 6 months.
11. Use a correlated subquery to list items that have been ordered more frequently than the average number of orders per item.
12. Write a subquery to list all clients who made purchases last year for items priced above the average price.
13. Write a query to identify the division with the highest average salary using a correlated subquery.
14. Create a subquery to list items that have been purchased by clients who have placed more than 10 orders.
15. Use a correlated subquery to list staff who work in the division with the highest total sales.
16. Write a subquery to list staff whose salary is in the top 5% of the entire company.
17. Write a query to list items that have not been purchased by any client in the past month.
18. Use a correlated subquery to list staff who work in the same division as staff members with the highest purchase totals.
19. Create a subquery to list clients who have not made any purchases in the last 6 months and have spent less than $100.
20. Write a query to list all staff who have been employed for more than 10 years and have made purchases for items worth more than $1,000.
