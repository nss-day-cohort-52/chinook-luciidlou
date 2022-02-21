-- Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
-- Employee full name
-- Total number of customers assigned to each employee (even if it's zero)

SELECT
e.firstName || " " || e.lastName as employee_name,
COUNT(c.SupportRepId) as customer_count
FROM Employee as e
JOIN Customer as c
ON e.EmployeeId = c.SupportRepId
GROUP BY employee_name