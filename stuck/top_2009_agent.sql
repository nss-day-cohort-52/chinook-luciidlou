-- Which sales agent made the most in sales in 2009?

-- HINT: Use the MAX function on a subquery.

SELECT
MAX(i.InvoiceId),
e.FirstName || " " || e.LastName as employee_name,
i.InvoiceDate,
COUNT(i.InvoiceId) as total_invoices
FROM Invoice as i
JOIN
Customer as c,
Employee as e
ON i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate LIKE "2009%"
GROUP BY employee_name