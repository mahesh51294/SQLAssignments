create table person(
personid int,name varchar(20));



--new table employee
create table employee(
empid int,empname varchar(20),salary int,age int,deptname varchar(20));
alter table employee alter column empname varchar(40)
sp_rename 'employee.empname' , 'employeename'

alter table employee drop column age

alter table employee add age int


sp_help employee


