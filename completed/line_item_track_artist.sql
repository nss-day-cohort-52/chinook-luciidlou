-- Provided a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT 
il.InvoiceLineId,
t.Name as track_name,
a.Name as artist_name
FROM InvoiceLine as il
JOIN 
Track as t ON t.TrackId = il.TrackId,
Album as ab on ab.AlbumId = t.AlbumId,
Artist as a ON a.ArtistId = ab.ArtistId
ORDER BY il.InvoiceLineId DESC
