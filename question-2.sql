-- Show the sales agent's full name and invoices associated with each sales agent.
select employees.FirstName, employees.LastName, invoices.* from employees join customers on employees.EmployeeId = customers.SupportRepId join invoices on  customers.CustomerId = invoices.CustomerId; 
