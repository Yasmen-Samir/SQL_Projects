/*Problem 1*/

/*Question 1 answer*/

select Department.Dname, Employee.Ename
from Employee right outer join Department
on Employee.SSN = Department.Dmgr_SSN


/*Question 2 answer*/


select distinct Dnumber 
from Project


/*Question 3 answer*/


select *
from Employee
where Employee.Dnumber = 3


/*Question 4 answer*/


select Employee.Ename
from Employee inner join Department
on Employee.Dnumber = Department.Dno and Employee.City = 'Cairo' and Department.Dname = 'MobileTeam'


/*Question 5 answer*/


select Ename
from Employee
where Employee.Dnumber = 1 or Employee.Dnumber = 2


/*Question 6 answer*/


select Employee.Ename
from Employee inner join Department
on Employee.SSN = Department.Dmgr_SSN


/*Question 7 answer*/


select Project.Pname, Department.Dname
from Project inner join Department
on Project.Dnumber = Department.Dno


/*Question 8 answer*/


select Employee.Ename, Project.Pname
from WorksOn inner join Employee
on WorksOn.SSN = Employee.SSN
inner join Project
on WorksOn.Pnumber = Project.Pnumber


/*Question 9 answer*/


select Employee.Ename
from Employee inner join WorksOn
on Employee.SSN = WorksOn.SSN
inner join Project 
on WorksOn.Pnumber = Project.Pnumber and Project.Plocation = Employee.City


/*Question 10 answer*/


select Employee.Ename, WorksOn.Hours
from Employee inner join WorksOn
on Employee.SSN = WorksOn.SSN
inner join Project
on WorksOn.Pnumber = Project.Pnumber and Project.Plocation = Employee.City
inner join Department
on Department.Dno = Project.Dnumber and Department.Dno != Employee.Dnumber



/*--------------------------------------------------------------------------------------------------------------------------------------------------------------*/


/*Problem 2*/


/*Question 1 answer*/


select distinct p.pname, s.sname
from P full outer join SPJ
on p.p# = SPJ.p#
full outer join s 
on s.s# = spj.s#


/*Question 2 answer*/


select SPJ1.s#
from SPJ SPJ1, SPJ SPJ2 
where SPJ1.p# = 'p1' and SPJ2.p# = 'p1'
group by SPJ1.s#, SPJ1.qty
having SPJ1.qty > AVG (SPJ2.qty)



/*Question 3 answer*/


select SPJ.j#
from SPJ
where SPJ.s# = 's1'


/*Question 4 answer*/


select distinct s.sname
from s inner join SPJ
on s.s# = SPJ.s# and SPJ.s# not in
	(select SPJ.s# 
	from spj 
	where SPJ.p# = 'p2')


/*Question 5 answer*/


select distinct sname
from s
where s.status in
	(select s.status
	from s inner join SPJ
	on s.s# = SPJ.s# and SPJ.p# = 'p1')



/*Question 6 answer*/


select distinct 
    CASE WHEN SPJ1.s# > SPJ2.s# THEN SPJ1.s# ELSE SPJ2.s# END as First_S#,
    CASE WHEN SPJ1.s# > SPJ2.s# THEN SPJ2.s# ELSE SPJ1.s# END as Second_S#
from SPJ SPJ1 inner join SPJ SPJ2
on SPJ1.p# = SPJ2.p#




