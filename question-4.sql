-- Which sales agent made the most in sales in 2010?
select employees.FirstName, employees.LastName, sum(invoice_items.Quantity) as ItemsSold
from employees 
join customers on employees.EmployeeId= customers.SupportRepId 
join invoices on  customers.CustomerId = invoices.CustomerId 
join invoice_items on invoices.InvoiceId = invoice_items.InvoiceId
where invoices.InvoiceDate like "2010%"
group by employees.EmployeeId