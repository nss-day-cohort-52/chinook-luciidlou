-- Which sales agent made the most in sales over all?

SELECT 
e.FirstName || " " || e.LastName as employee_name,
SUM(i.Total) as total_sales
FROM Invoice as i
JOIN 
Customer as c, 
Employee as e
ON i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
ORDER BY total_sales DESC
LIMIT 1