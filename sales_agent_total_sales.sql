-- Provided a query that shows total sales made by each sales agent. The resultant table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT
e.FirstName || " " || e.LastName as employee,
COUNT(i.InvoiceId) as total_invoices
FROM Invoice as i
JOIN 
Customer as c, 
Employee as e 
ON i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
GROUP BY employee

