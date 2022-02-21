-- Provide a query that shows the most purchased track(s) of 2013

SELECT
t.Name as track,
SUM(i.Total) as sales_2013
FROM Invoice as i
JOIN
InvoiceLine as il,
Track as t
ON i.InvoiceId = il.InvoiceId
AND il.TrackId = t.TrackId
WHERE i.InvoiceDate LIKE "2013%"
GROUP BY MAX(sales_2013)
ORDER BY sales_2013 DESC