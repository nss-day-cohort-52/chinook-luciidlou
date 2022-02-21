-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT 
InvoiceId, 
COUNT(InvoiceLineId) as num_of_line_items 
FROM InvoiceLine
GROUP BY InvoiceId
