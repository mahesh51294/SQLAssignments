
create table Department(
deptid int,
depetName varchar(20)
)
alter table department alter column deptid int not null
alter table department add Constraint pk_deptid primary key (deptid)
alter table employee alter column empsalary numeric(12,2)
sp_help employee
alter table employee drop column empdept
alter table employee alter column empid int not null
alter table employee add Constraint pk_empid primary key (empid)
alter table employee alter column empage int
alter table employee add Constraint ch_emage check (empage>18)
alter table employee drop constraint ch_emage
alter table employee add Constraint fk_deptid foreign key (deptid) references department(deptid)
insert into department values(1,'hr'),
(2,'testing'),
(3,'maintenance'),
(4,'production'),
(5,'quality')
insert into employee values(100,'tushar',50000,'nashik',2,26)
insert into employee values(101,'kumar',50000.00,'pune',1,23),
insert into employee values(102,'abhi',60000.00,'hydrabad',4,24),
(103,'arun',55000.00,'surat',5,22),
(104,'pranit',70000.00,'nagpur',3,27),
(105,'shalan',52000.00,'chandori',2,28),
(106,'swami',56000.00,'mumbai',2,25),
(107,'mrughda',55000.00,'pune',4,28),
(108,'swara',60000.00,'solapur',1,26),
(109,'priyanka',70000.00,'niphad',3,27),
(110,'mahesh',65000.00,'jamkhed',4,29),
(111,'nagesh',50400.00,'nashik',3,30)
sp_help employee
update employee set empsalary=55000 where empid=100
update employee set empsalary=67000,empadress='solapur',deptid=4 where empid=106
delete from employee where empid=110
select *from employee
select *from department