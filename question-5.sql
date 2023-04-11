-- What was the most purchased track of 2013?
select tracks.Name, sum(invoice_items.Quantity) as total_purchases
from tracks 
join invoice_items on invoice_items.TrackId = tracks.TrackId
join invoices on invoice_items.InvoiceId = invoices.InvoiceId
where invoices.InvoiceDate like "2013%"
group by tracks.Name
order by total_purchases desc
limit 50