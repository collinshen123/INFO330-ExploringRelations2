-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
select tracks.Name, tracks.Composer, invoice_items.* from tracks join invoice_items on tracks.TrackId = invoice_items.TrackId
