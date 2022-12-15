create trigger fff on dependent for insert
as
declare @newssn int
declare @oldsal int
declare @newsal int

select @newssn = essn from inserted
select @oldsal = salary from employee where ssn = @newssn
set @newsal = @oldsal *1.1
update employee set salary = @newsal  where ssn = @newssn 