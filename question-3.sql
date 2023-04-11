-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
select tracks.Name, artists.name as ArtistName, invoice_items.* 
from invoice_items 
join tracks on invoice_items.TrackId = tracks.TrackId 
join albums on tracks.AlbumId = albums.AlbumId
join artists on albums.ArtistId = artists.ArtistId;
