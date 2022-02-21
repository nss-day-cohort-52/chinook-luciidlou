-- Provided a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT
i.Total as invoiceTotal,
c.FirstName || " " || c.LastName as customerName,
c.Country,
e.FirstName || " " || e.LastName as salesAgentName
FROM Invoice as i
JOIN Customer as c, Employee as e
WHERE i.CustomerId IS c.CustomerId
AND c.SupportRepId IS e.EmployeeId
ORDER BY invoiceTotal DESC
