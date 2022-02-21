-- Provide a query that shows the most purchased Media Type

SELECT
mt.Name as media_type,
COUNT(mt.MediaTypeId) as  total_purchases
FROM MediaType as mt
JOIN 
Track as t ,
InvoiceLine as il
ON mt.MediaTypeId = t.MediaTypeId
GROUP BY media_type
ORDER BY total_purchases DESC
LIMIT 1