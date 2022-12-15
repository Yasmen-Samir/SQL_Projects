create PROCEDURE usp
AS
SELECT * FROM  Employees

alter procedure usp
as 
select * from Employees
where EmployeeID = 9

drop procedure usp

exec usp

alter procedure ddd @lastname varchar(20)
as
select FirstName from Employees
where LastName = @lastname 

exec ddd 'King' 

alter procedure nela @x varchar(20), @y int output
as 
select @y = COUNT(*) from Employees
where LastName = @x; 

declare @x varchar(20);
declare @y int;
set @x = 'King';


execute nela @x,@y output 
print @y


alter procedure araf  @max int 
as
select max(EmployeeID) as maximum from Employees
return @max

declare @max int
declare @ret int

execute @ret = araf @max 
print @ret



















