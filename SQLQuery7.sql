create procedure lll @y varchar(20)
as
select FirstName from Employees
where LastName = @y

declare @w varchar(20)
set @w = 'Davolio'

execute lll @w


alter procedure hhh @w varchar(20) output, @l varchar(20) output, @id int
as
select @w = LastName, @l = Country from Employees 
where EmployeeID = @id

declare @q int
set @q = 6

declare @w varchar(20)
declare @l varchar(20)

execute hhh @w output, @l output, @q 

print @w print @l

alter procedure www @s int
as
declare @a varchar(20)
select @a = FirstName from Employees
where  EmployeeID = @s
/*return @a*/

declare @ret varchar(20)
declare @id int
set @id = 6 

execute @ret = www @id

CREATE PROCEDURE usp_get_count_by_dept_2 (@deptname NVARCHAR(50))
AS
declare @deptcount INT

SELECT @deptcount = COUNT(*) FROM employee, department
WHERE dname=@deptname AND employee.dno=department.dnumber;

return @deptcount
DECLARE @ReturnValue INT
exec @ReturnValue=usp_get_count_by_dept_2 'Research'



