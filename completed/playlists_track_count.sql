-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT 
p.Name as playlist_name,
COUNT(pt.TrackId) as track_count
FROM Playlist as p
JOIN Track as t, PlaylistTrack as pt
ON t.TrackId = pt.TrackId
GROUP BY playlist_name
