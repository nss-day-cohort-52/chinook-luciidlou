-- Provided a query that shows all Invoices with the total line items for each invoice. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice

SELECT 
i.InvoiceId,
COUNT(il.InvoiceId) as invoice_line_count 
FROM Invoice as i
JOIN
InvoiceLine as il
ON
i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId