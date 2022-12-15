alter procedure ddd @id int
as
declare @price int
select @id = Employees.EmployeeID , @price = ShipVia from Employees,Orders
where Employees.EmployeeID = orders.EmployeeID
return @price

declare @id int
set @id = 5

declare @price int

execute @price = ddd @id
select price = @price

