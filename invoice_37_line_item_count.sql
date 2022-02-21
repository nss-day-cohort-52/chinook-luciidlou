-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT il.InvoiceId, COUNT() as num_of_invoice_lines FROM InvoiceLine as il
WHERE il.InvoiceId IS 37
GROUP BY il.InvoiceId
