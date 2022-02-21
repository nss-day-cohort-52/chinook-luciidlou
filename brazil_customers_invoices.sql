-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country

SELECT 
i.InvoiceId, 
i.InvoiceDate,
i.BillingCountry,
c.FirstName || " " || c.LastName as fullName
FROM Invoice as i
JOIN Customer as c 
WHERE c.CustomerId IS i.CustomerId 
AND i.BillingCountry IS "Brazil"
