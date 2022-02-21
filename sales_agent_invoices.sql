-- Provided a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT
e.FirstName || " " || e.LastName as fullName,
i.InvoiceId
FROM Invoice as i
JOIN Customer as c, Employee as e
WHERE i.CustomerId IS c.CustomerId
AND c.SupportRepId IS e.EmployeeId
ORDER BY fullName
