-- Provide a query that shows the total number of invoices per country.

SELECT 
BillingCountry, 
COUNT(InvoiceId) as total_invoices 
FROM Invoice
GROUP BY BillingCountry
