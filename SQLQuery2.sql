sp_help employee
sp_help department

create table department(deptid int,name varchar(20))

insert into department(deptid,name)values(1,'HR')
insert into department(deptid,name)values(2,'ACCOUNT')
insert into department(deptid,name)values(3,'MANAGER')
insert into department(deptid,name)values(1,'TECHNICAL')


insert into employee(empid,employeename,salary,deptname,age)values(1,'mahesh',400000,'information tech',27)
insert into employee(empid,employeename,salary,deptname,age)values(2,'ajay',300000,'manager',26)
insert into employee(empid,employeename,salary,deptname,age)values(3,'vijay',500000,'General Manager',28)
insert into employee(empid,employeename,salary,deptname,age)values(4,'akash',4500000,'HR',22)
insert into employee(empid,employeename,salary,deptname,age)values(5,'ovi',470000,'TECH SUPPORT',21)
insert into employee(empid,employeename,salary,deptname,age)values(6,'anu',480000,'manager',25)
insert into employee(empid,employeename,salary,deptname,age)values(7,'ram',490000,'HR',24)
insert into employee(empid,employeename,salary,deptname,age)values(8,'shyam',100000,'TECH SUPPORTh',28)
insert into employee(empid,employeename,salary,deptname,age)values(9,'om',400500,'manager',29)
insert into employee(empid,employeename,salary,deptname,age)values(10,'avdhoot',404500,'HR',21)
insert into employee(empid,employeename,salary,deptname,age)values(11,'vikram',400780,'TECH SUPPORT',20)
insert into employee(empid,employeename,salary,deptname,age)values(12,'virat',400089,'information tech',29)
insert into employee(empid,employeename,salary,deptname,age)values(13,'mahendra',489000,'HR',35)
insert into employee(empid,employeename,salary,deptname,age)values(14,'vikas',400089,'TECH SUPPORT',31)
insert into employee(empid,employeename,salary,deptname,age)values(15,'vinay',400025,'information tech',33)

SELECT * from employee;
select * from department;

delete from employee where empid=2
update employee set salary=27000 where empid=7


select * from Employee where empid=1


select * from Employee where salary<35000
select * from Employee where salary>=35000

select * from Employee where age >30
--range
select * from Employee where salary between 25000 and 35000

