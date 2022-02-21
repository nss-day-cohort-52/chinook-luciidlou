-- Provide a query showing only the Employees who are "Sales Agents"

SELECT
e.EmployeeId,
e.FirstName || " " || e.LastName as fullName,
e.Title,
e.City,
e.State,
Email
FROM Employee as e
WHERE Title IS "Sales Support Agent"
