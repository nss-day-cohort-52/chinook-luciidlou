-- Provided a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT 
t.Name as track,
alb.Title as album,
mt.Name as media_type,
g.Name as genre
FROM Track as t
JOIN 
MediaType as mt,
Genre as g,
Album as alb
ON 
mt.MediaTypeId = t.MediaTypeId
AND
g.GenreId = t.GenreId
AND
alb.AlbumId = t.AlbumId
