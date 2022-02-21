-- Which sales agent made the most in sales over all?

SELECT 
i.InvoiceId, 
SUM(i.Total) as total_sales,
e.FirstName || " " || e.LastName as employee_name 
FROM Invoice as i
JOIN 
Customer as c, 
Employee as e
ON i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId