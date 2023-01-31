create table book(
Bookid int,
Bookname varchar(30),
authorid int,
price decimal,
publisheddate date
)
alter table book alter column Bookid int not null
alter table book drop constraint pk_book
alter table book add constraint fk_authorid2 foreign key(authorid) references author(authorid)
alter table book alter column authorid int not null


--drop table Author

create table Author(
Authorid int not null,
Authorname varchar(30),
phno varchar(10),
email varchar(30),
Authoraddress varchar(50),
city varchar(30)
)
alter table Author add constraint pk_authorid primary key (authorid)



create table AwardMaster(
Awardtypeid int not null primary key,
AwardName varchar(30),
AwardPrize decimal
)


create table Awards(
Awardid int not null,
Awardtypeid int ,
Authorid int,
Bookid int,
AwardYears varchar(20) 
)
alter table Awards add constraint pk_awardid primary key (awardid)
alter table Awards add constraint fk_authorid foreign key(authorid) references author (authorid)
alter table Awards add constraint fk_bookid foreign key(bookid) references book (bookid)


select * from book
select * from Author
select * from AwardMaster
select * from Awards

insert into book values (1,'Jungle Book',100,500,'2010-5-12')
insert into book values (2,'Mrutynjay',101,400,'2014-4-21')
insert into book values (3,'MahaBharat',102,600,'1875-2-20')
insert into book values (4,'Ramayan',103,900,'2017-7-5')
insert into book values (5,'Agnipankh',104,700,'2020-9-13')


INSERT INTO Author VALUES(100, 'Pranit', '9850332330', 'pranit@gmail.com', 'near modern highschool' , 'Ichalkaranji')
INSERT INTO Author VALUES(101, 'Arun', '123332330', 'arun@gmail.com', 'near st stand' , 'Nashik')
INSERT INTO Author VALUES(102, 'Kavita', '9850334556', 'kavita@gmail.com', 'near dmart' , 'Bhusawal')
INSERT INTO Author VALUES(103, 'Mahesh', '123456789', 'mahesh@gmail.com', 'near sfc mall' , 'Kolhapur')
INSERT INTO Author VALUES(104, 'Ajay', '789456123', 'ajay@gmail.com', 'near shiroli fata' , 'Shiroli')

insert into AwardMaster values(420,'PadmBhushan',50000)
insert into AwardMaster values(421,'PadmShree',55000)
insert into AwardMaster values(422,'Dadasaheb Falke',600000)
insert into AwardMaster values(423,'Arjun',1000000)
insert into AwardMaster values(424,'Veer',4500000)

Insert into Awards values (300, 420, 100,1, '2019')
Insert into Awards values (301, 421, 101,2, '2002')
Insert into Awards values (302, 422, 102,3, '1996')
Insert into Awards values (303, 423, 103,4, '2000')
Insert into Awards values (304, 424, 104,5, '2016')




--Write a query to show book name , author name and award name for all books which has received any award.
alter table awards add constraint fk_awardtypeid foreign key(awardtypeid) references awardmaster(awardtypeid)
select 
select a.Authorid,a.Bookid
from Awards a inner join AwardMaster am on a.Awardtypeid=am.Awardtypeid inner join author at on at.author_id

select 
from book b inner join author a4 on b.authorid=a4.authorid
inner join AwardMaster am on am.Awardtypeid=am.










