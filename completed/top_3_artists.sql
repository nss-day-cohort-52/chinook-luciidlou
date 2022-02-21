-- Provide a query that shows the top 3 best selling artists

SELECT
a.Name as artist_name,
COUNT(il.InvoiceLineId) as total_sale_count
FROM InvoiceLine as il
JOIN 
Track as t,
Album as alb,
Artist as a
ON il.TrackId = t.TrackId
AND t.AlbumId = alb.AlbumId
AND alb.ArtistId = a.ArtistId
GROUP BY a.Name
ORDER BY total_sale_count DESC
LIMIT 5