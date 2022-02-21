-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT 
il.InvoiceLineId,
t.Name
FROM InvoiceLine as il
JOIN Track as t ON t.TrackId = il.TrackId
-- GROUP BY InvoiceLineId

