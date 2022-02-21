-- Provide a query that shows the top 5 most purchased tracks over all


SELECT
t.TrackId as track_id,
t.Name as track_name,
COUNT(il.TrackId) as total_purchases
FROM Track as t
JOIN InvoiceLine as il
ON t.TrackId = il.TrackId
GROUP BY track_name
ORDER BY total_purchases DESC
LIMIT 5