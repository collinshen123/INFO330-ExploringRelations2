-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT DISTINCT tracks.TrackId, tracks.Name, tracks.Composer
FROM tracks
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
WHERE tracks.TrackId IS NOT NULL
  AND tracks.Name IS NOT NULL
  AND tracks.Composer IS NOT NULL
ORDER BY tracks.TrackId;