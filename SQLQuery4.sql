declare @x float
set @x = 6.9
print (@x)

declare @y int
select @y = ProductID from Products
print (@y)

declare @w float
select @w = avg(CategoryID) from Products

if(@w < 5)

begin

update Products
set CategoryID = CategoryID*2

end

declare cur cursor for select EID, dept, salary from employee where salary < 4000 
declare @id int, @dep varchar(50), @sal float

open cur
fetch next from cur into @id, @dep, @sal

while @@FETCH_STATUS = 0
begin

declare @q = select avg(salary) from employee 
if (select @sal < @q)
begin
update employee 
where EID = @id
set salary = salary * 1.1
end

fetch next from cur into @id, @dep, @sal
end



declare cur cursor for select fname, id, salary from employee
declare @d varchar(20), @e int, @r float

open cur
fetch next into @d , @e , @r 

while @@FETCH_STATUS = 0
begin

fetch next into @d , @e , @r 

end




declare cur cursor for select mname, id, salary from employee
declare @z varchar(30), @v int, @g float

open cur
fetch next into @z, @v, @g

while @@FETCH_STATUS = 0

begin

fetch next into @z, @v, @g
end
