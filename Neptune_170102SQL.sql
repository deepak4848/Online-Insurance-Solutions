select * from Teachers
select * from Designations
insert into Teachers (name,LastName,Email,Age,Doj,Gender,IsMarried,IsActive,DesignationID)
values('Deepak','Sharma','d@gmail.com',22,'2022-07-04','male',1,1,1)


select  *from master_device where device_slno ='601630'
select relay_status,* from master_device

select <Column Name> from <Table Name> <where condition> <Group  By> <Having> <order By> asc / desc

select top 2000 *From ems_prepost_archive_mvn.dbo.trns_daily_reading order by date  desc

select relay_status,count(relay_status) as cnt from master_device group by relay_status

use ems_prepost_mvn

select *From master_device where device_slno ='601003'

select *From master_device where device_slno in ('601003','601630','601634')

select *From master_device where device_slno not in ('601003','601630','601634')

 create table mytbl (it int)

 if exists(select * from sys.tables where name ='mytbl')
 begin
    print 'this table is exist'
	drop table mytbl
 end
 else
 begin
    print 'this table is not exist'
 end

select *From master_device where alert_amount  is not null

select *From master_account


create table mytbl  (empid int,empname varchar(50))
insert into mytbl values(1,2,2)


select ca_name,ca_address,device_slno,last_update_dttm from master_device as a,master_account as b
 where a.ca_no=b.ca_no and last_update_dttm<'2022-01-06'

 insert into <table name> (<column name>) values (<val1,val2>)

 update <table Name> set <column name>=<value>, optional <where>
-------------------------------------------sql practice-------------------query---------------------
create database Neptune_140102
use Neptune_130102
create table doctor
(
id int primary key identity,
name varchar(50),
age int,
Qualification varchar(100),
salary int,
address varchar(50),
hobbies varchar(100),
country varchar(50),
city varchar(50),
)
select * from teacher
select * from doctor
insert into doctor(name,age,Qualification,salary,address,hobbies,country,city,patient_name,Nurse_Name)values('RAMk',88,'MBBS',14000,'BIHAR','CRICKET','INDIA','GAYA','a','n')
insert into doctor(name,age,Qualification,salary,address,hobbies,country,city,patient_name,Nurse_Name)values('SHYM',98,'MBBS',44000,'BIHAR','CHESS','INDIA','PUNIYA','u','j')
insert into doctor values('AMI',66,'MBBS',34000,'UP','CRICKET','INDIA','MAI','','','14-01-11')
insert into doctor values('SUMI',37,'BAMS',0,'JAPAN TOKIO','HOCKEY','JAPAN','HEROSIMA','D','L','04-01-11')
insert into doctor values('LALI',56,'GNM',33000,'PAKIOSTAN','BOLLYBOL','PAKISTAN','LAHORE','K','N','03-01-11')
insert into doctor values('AJI',49,'ANM',55000,'CHINA','BOXING','CHINA','BIJING','E','M','01-01-11')
insert into doctor values('JON',61,'MBBS',31000,'AMERICA','CRICKET','UK','LANDON','Q','F','10-01-11')
insert into doctor values('PINT',38,'MBBS',34000,'UP','CRICKET','INDIA','BALIEA','W','V','15-01-11')
update doctor set name ='DEEPAK',age='55',city='bihar',Qualification='MS',salary='0' where id=1
alter table doctor add patient_name varchar(50)
alter table doctor add Nurse_Name varchar(50)
alter table doctor add Copounder_name varchar(50)
alter table doctor drop column Copounder_name 


update doctor set name='amit',age=44,city='mumbai',salary=19000 where id=3
update doctor set salary=40000 where id=1
delete from doctor
select * from doctor
-----------------------------jion table teacher and doctor-------------------------
select * from Students
select * from doctor
select * from teacher as A
join doctor as B on B.id=A.id
join Students as C on C.id=A.id

select * from teacher as A left
join doctor as B on B.id=A.id

select * from teacher as A right
join doctor as B on B.id=A.id

select * from teacher as A full
join doctor as B on B.id=A.id

select * from teacher as A inner 
join doctor as B on B.id=A.id

join Students as C on C.id=A.id---------------Self join

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

SELECT teacher.Name, doctor.id
FROM teacher
LEFT JOIN doctor ON teacher.id = doctor.id
ORDER BY teacher.Name;

-------------------------------------------------------------------------------------------------
update doctor set name ='DEEPAK',age='55',city='bihar',Qualification='MS',salary='0' where id=1
alter table doctor add patient_name varchar(50)
alter table doctor add Nurse_Name varchar(50)
alter table doctor add Copounder_name varchar(50)
alter table doctor drop column Copounder_name 


update doctor set name='amit',age=44,city='mumbai',salary=19000 where id=3
update doctor set salary=40000 where id=1
delete from doctor
select * from doctor
delete doctor where id=5
-----------------------------------------------
select * from doctor
alter table doctor drop column nurse
alter table doctor drop column nurse,patient,location
alter table doctor add patient varchar(50)
alter table doctor add patient varchar(50),gender varchar(50),country varchar(50)

create table student
(
id int primary key identity,
name varchar(50),
age int,
Qualification varchar(100),
salary int,
address varchar(50),
hobbies varchar(100),
country varchar(50),
city varchar(50),
)
select * from student
insert into student(name,age,Qualification,salary,address,hobbies,country,city)values('NAWAL',35,'MBBS',14000,'BIHAR','CRICKET','INDIA','GAYA')
insert into student(name,age,Qualification,salary,address,hobbies,country,city)values('SANTOSH',45,'MBBS',44000,'BIHAR','CHESS','INDIA','PUNIYA')
insert into student values('SANJEEV',65,'MBBS',34000,'UP','CRICKET','INDIA','MAI')
insert into student values('RAKESH',30,'BAMS',44000,'JAPAN TOKIO','HOCKEY','JAPAN','HEROSIMA')
insert into student values('MITHLESH',50,'GNM',33000,'PAKIOSTAN','BOLLYBOL','PAKISTAN','LAHORE')
insert into student values('BILMELSH',40,'ANM',55000,'CHINA','BOXING','CHINA','BIJING')
insert into student values('deepak',65,'MBBS',31000,'AMERICA','CRICKET','UK','LANDON')
insert into student values('PINTU',30,'MBBS',34000,'UP','CRICKET','INDIA','BALIEA')

truncate table student
delete student
drop table student
sp_rename 'student','teacher'
select * from teacher
sp_rename 'teacher.Qualification','Education '
sp_renamedb 'Neptune_140102','Neptune_130102'

select * from teacher
select * from employee


select * from doctor
join teacher  on teacher.id=doctor.id
join employee on teacher.id=doctor.id

------------------------TABLE A AND TABLE B JOIN-----------------------------------------
create database db_join120922
use db_join120922
create table A
(
id int primary key identity,
name varchar(50),
age int,
salary int,
country varchar(100),
)
insert into A values('MONU',54,15000,'INDIA')
insert into A values('AMAR',68,13000,'JAPAN')
insert into A values('AMAR',54,18000,'UK')
insert into A values('RAVI',34,19000,'CHINA')
insert into A values('SONU',19,155000,'PAKISTAN')

create table B
(
id int primary key identity,
name varchar(50),
age int,
salary int,
country varchar(100),
)
insert into B values('OM',54,15000,'USA')
insert into B values('AMA',68,13000,'JAPAN')
insert into B values('AJIT',54,18000,'UK')
insert into B values('AVI',34,19000,'CHINA')
insert into B values('ONU',19,155000,'PAKISTAN')
select * from A
select * from B
select * from A
join B on B.id=A.id
------------------------JOIN TABLE A B C----------------------------------------
create table C
(
id int primary key identity,
name varchar(50),
age int,
salary int,
country varchar(100),
)
insert into C values('M',54,15000,'USA')
insert into C values('DAMA',68,13000,'JAPAN')
insert into C values('JIT',54,18000,'UK')
insert into C values('DAVI',34,19000,'CHINA')
insert into C values('OGNU',19,155000,'PAKISTAN')

select * from A
select * from B
select * from C
select * from A as ant
join B as ball on ball.id=ant.id
join C as cat ON cat.id=ant.id

select * from A 
join B  on B.id=A.id
join C  ON C.id=C.id

select * from A
 left join B on A.id=B.id
select * from A
 left outer join B on A.id=B.id
 select * from A
 right join B on A.id=B.id
 select * from A
 right outer join B on A.id=B.id

---------------------------------------------------------------
select * from A
 left join B on A.id=B.id

select * from tblemployee 
left outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
right join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
right outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
full outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
cross join tblcountry 

select * from tblemployee 
left join tblcountry on tblemployee.country=tblcountry.cid 
where tblcountry.name is null

select patient_name,* from doctor

select top 20 *From doctor order by age  desc
select top 20 *From doctor order by age  asc

select address,count(address) as cnt from doctor group by address

select *From doctor where age in ('45','88','55','65')

select *From doctor where age not in ('45','88','55','65') 

select *From mytbl

 create table mytbl (it int)

 if exists(select * from sys.tables where name ='mytbl')
 begin
    print 'this table is exist'
 end
 else
 begin
    print 'this table is not exist'
 end
 ---------------------------------------------------------------------------------------
 SELECT * FROM doctor
WHERE Country='INDIA' AND City='Baliea';
SELECT * FROM doctor
WHERE City='lahore' OR City='gaya';
SELECT * FROM doctor
WHERE Country='india' OR Country='pakistan';
SELECT * FROM doctor
WHERE NOT Country='INDIA';
SELECT * FROM doctor
WHERE Country='INDIA' AND (City='gaya' OR City='baliea');
SELECT * FROM doctor
WHERE NOT Country='INDIA' AND NOT Country='PAKISTAN';

SELECT * FROM doctor
ORDER BY Country;
SELECT * FROM doctor
ORDER BY Country DESC;
---------------------------------
SELECT * FROM doctor
ORDER BY Country, Nurse_Name;

SELECT Nurse_Name, city, Address
FROM doctor
WHERE Address IS NULL;

SELECT Nurse_Name, city, patient_name
FROM doctor
WHERE patient_name IS NULL;

SELECT Nurse_Name, city, patient_name
FROM doctor
WHERE patient_name IS NOT NULL;

SELECT MIN(salary) AS Smallestsalary
FROM doctor;

SELECT MAX(salary) AS Smallestsalary
FROM doctor;

SELECT COUNT(patient_name)
FROM doctor;

SELECT SUM(salary)
FROM doctor;

SELECT AVG(salary)
FROM doctor;
----------------------------------------------------------------------------------
SELECT * FROM doctor
WHERE name LIKE 'a%';
SELECT * FROM doctor
WHERE name LIKE '%a%';
SELECT * FROM doctor
WHERE City LIKE 'gay%';
--------------------------------------------------------------------------------------
SELECT * FROM doctor
WHERE salary BETWEEN 30000 AND 44000;

SELECT patient_name AS P, Nurse_name AS N
FROM doctor;

SELECT City FROM doctor
UNION
SELECT City FROM teacher
ORDER BY City;

SELECT * FROM doctor
SELECT * FROM teacher
----------------------------------------------------------------------------
SELECT COUNT(city), Country
FROM teacher
GROUP BY Country;
------------------------------------------------------------------------
SELECT COUNT(salary), Country
FROM teacher
GROUP BY Country
HAVING COUNT(salary) > 5;
-------------------------------------------------------------------------
 create table mytbl (it int)
 SELECT * INTO mytbl
FROM teacher;
--------------------------------------------------------------------------------
SELECT * INTO teacherBackup20
FROM teacher;
SELECT * from teacherBackup20
---------------------------------------------------------------------------------
SELECT * INTO teacherBackup20 IN 'Backup.mdb'
FROM teacher;
-----------------------------------------------------------------------
SELECT name, City, patient_name
FROM doctor
ORDER BY
(CASE
    WHEN City IS NULL THEN patient_name
    ELSE City
END);

/*CREATE PROCEDURE sp_doc
AS
SELECT * FROM doctor
GO;*/
BACKUP DATABASE Neptune_130102
TO DISK = 'E:\b';
BACKUP DATABASE Neptune_130102
TO DISK = 'D:\b\Neptune_130102.bak';
------Unique key--------
CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
-------------------------------------------------------------------------
select * from persons
insert into Persons values (1,'kumar','deepak',31)
insert into Persons (LastName,FirstName,Age) values('SHARMA','AMIT',44)
---------------PRIMARY KEY
CREATE TABLE Students (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
select * from Students
insert into Students values (8,'huhuh','0',hhh)
--------------------foreign key
CREATE TABLE Students (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
--------------------------check condition---------
CREATE TABLE Personns (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
);

select * from Personns
insert into Personns values(2,'KUMARR','ANUJJ',16)
--------------DEFAULT SQL COND-------------
CREATE TABLE Perrsons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);
-----------------------------------------------------------
select * from Perrsons
insert into Perrsons values(1,'KUMARR','ANUJJ',16,'goa')
-----------------------------------------------------------
CREATE TABLE Ordeers 
(
    ID int NOT NULL,
    OrderNumber int NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE()
);
-----------------------------------------------------------------
select * from Orders
insert into Orders values(5,'1010','2009-11-11')
SELECT * FROM Orders WHERE OrderDate='2009-11-11'
----------------------------------------------------------------
CREATE VIEW [doctor] AS
SELECT Name, age
FROM doctor
WHERE Country = 'india';
------------------------------------------------------------------------
 select *From doctor where patient_name  is not null

  select *From doctor where patient_name  is null

    select *From doctor datetime '15-01-11'

 select *  From doctor datetime '15-01-11'

  select name,address,age,doctor from teacher as a,doctor as b
 where a.name=b.name and last_update<'2022-01-06'

 insert into <table name> (<column name>) values (<val1,val2>)

 update <table Name> set <column name>=<value>, optional <where>
=============================================================================
select  *from doctor where salary ='44000'
---------------------------------------------------------------------------
create table employee
(
id int primary key identity,
name varchar(50),
age int,
Qualification varchar(100),
salary int,
address varchar(50),
hobbies varchar(100),
country varchar(50),
city varchar(50),
)
select * from employee
insert into employee(name,age,Qualification,salary,address,hobbies,country,city)values('NAWAL',35,'MBBS',14000,'BIHAR','CRICKET','INDIA','GAYA')
insert into employee(name,age,Qualification,salary,address,hobbies,country,city)values('SANTOSH',45,'MBBS',44000,'BIHAR','CHESS','INDIA','PUNIYA')
insert into employee values('SANJEEV',65,'MBBS',34000,'UP','CRICKET','INDIA','MAI')
insert into employee values('RAKESH',30,'BAMS',44000,'JAPAN TOKIO','HOCKEY','JAPAN','HEROSIMA')
insert into employee values('MITHLESH',50,'GNM',33000,'PAKIOSTAN','BOLLYBOL','PAKISTAN','LAHORE')
insert into employee values('BILMELSH',40,'ANM',55000,'CHINA','BOXING','CHINA','BIJING')
insert into employee values('deepak',65,'MBBS',31000,'AMERICA','CRICKET','UK','LANDON')
insert into employee values('PINTU',30,'MBBS',34000,'UP','CRICKET','INDIA','BALIEA')
---------------------------change table name-------------doctor to hospital----------------------------importent
sp_rename 'doctor','hospital'
select * from hospital
-----------------------change column name--------------------
select * from hospital
sp_rename 'hospital.city','location'
------------------change databas name------------------------------
sp_renamedb 'class07091','VIMS'
-----------------add column name----------------------------
alter table hospital add  age varchar(50)
select * from hospital
alter table hospital add gender varchar(50),country varchar(50)
----------------------------------------------------------------------
select * from hospital
----------------drop column name-------------------------------------------
alter table hospital drop column patient,gender,country

insert into hospital values('sanjay',39,31000,'vijaynagar')
----------------------------------------------------------------------
Select DISTINCT id, name from Student
select * from Student 
Select DISTINCT id, name from tblemployee
Select SUBSTRING(name,1,5) as name from tblemployee
select * from hospital 
select * from hospital where id=4 or id=5
select * from hospital where id=4
select * from hospital where id in (5,6,7)
select * from hospital where id in (8,9,10)
select * from hospital where id between 9 and 10
select * from hospital where id between 7 and 11
-----------------------------------------------------------------------
select * from hospital where id <9
select * from hospital where id <= 9
select * from hospital where id >9
select * from hospital where id >=9
------------------------------------------------------------------------
select * from hospital
select * from hospital where name='mohan'
insert into hospital values('gaurav',44,49000,'ram nagar')
insert into hospital values('brijesh',44,49000,'kunda nagar')
insert into hospital values('chandan',44,49000,'sanjay nagar')

---------------------------wild card operater posiutive op---------------------------------------------
select * from hospital where name like 'mohan%'
select * from hospital where name like 'ram%'
select * from hospital where name like '%ram%'
select * from hospital where name like 'ra%'
select * from hospital where name like 'r%'
select * from hospital where name like 'k%'
select * from hospital where name like 'a%' or name like 'm%'
select * from hospital where name like '[a,d]%'
select * from hospital where name like '[a-z]%'
select * from hospital where name like '[a-c]%'
--------------wild card operater negative op-------------------------------------
select * from hospital where name not like 'mohan%'
select * from hospital where name not  like 'ram%'
select * from hospital where name not like '%ram%'
select * from hospital where name not like 'ra%'
select * from hospital where name not like 'r%'
select * from hospital where name  not like 'k%'
select * from hospital where name not like 'a%' or name like 'm%'
select * from hospital where name not like '[a,d]%'
select * from hospital where name not like '[a-z]%'
select * from hospital where name not like '[a-c]%'
--------------wild card operater negative op ^-------------------------------------
select * from hospital where name like 'mohan%'
select * from hospital where name not like '[^a,d]%'
-------------------------------------------------------------------------------------
select * from hospital order by name
select * from hospital order by age
select * from hospital order by salary
select * from hospital order by name desc
select * from hospital order by age desc
select * from hospital order by salary desc
-------------------------------------------------------------------------
insert doctor(name,age,city,salary)values('roshan',35,'loni',18000)
insert into doctor values('rohit',35,14000,'nalanda')
insert into doctor values('aarav',35,14000,'nalanda')
insert into doctor values('kamal',35,14000,'nalanda')
=======================================================================================
SELECT * FROM Ordeers WHERE DATE_TIME_COLUMN
BETWEEN 'STARTING_DATE_TIME' AND 'ENDING_DATE_TIME';
alter doctor add column DATE_TIME_COLUMN
select * from doctor
alter table doctor drop column datetime
alter table doctor column DATE_TIME_COLUMN
alter table doctor add  DATE_TIME_COLUMN
alter table doctor add  DATE_TIME_COLUMN varchar(50)
ALTER TABLE doctor
ADD Email varchar(255);

ALTER TABLE doctor
ADD DATE_TIME_COLUMN varchar(255);
alter table doctor add DATE_TIME_COLUMN varchar(1000)

SELECT * FROM doctor
 WHERE DATE_TIME_COLUMN
BETWEEN 'STARTING_DATE_TIME' AND 'ENDING_DATE_TIME';
-----------------------any all query--------------------------
create table product
(
Product_id int primary key identity,
Product_Name varchar(100),
Supplier_id varchar(100),
Category_ID varchar(100),
Unit varchar(100),
Price bigint,
)
select * from product
insert into product values('sound',105,005,40,300)

create table Order_Details
(
OrderDetails_id int primary key identity,
Order_id int,
Product_ID int,
Quantity int,
)
select * from Order_Details
insert into Order_Details values(1071,070,60)
SELECT Product_Name
FROM Product
WHERE Product_id = ANY
  (SELECT Product_id
  FROM Order_Details
  WHERE Quantity = 50);
  -----------------------imp SQLBackup-----------------------
  BACKUP DATABASE Neptune_130102
TO DISK = 'E:\b\Neptune_130102.bak';
BACKUP DATABASE testDB
TO DISK = 'E:\b\Neptune_130102.bak'
WITH DIFFERENTIAL;
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;
-----------------------------------------------Alok Sir Sql-------------------------------------------
[1:37 PM, 1/18/2022] samid: use db2527_221021
create table tblEmployee
(
id int primary key identity,
name varchar(50),
age int,
gender varchar(50),
salary int,
country varchar(100),
)
insert into tblEmployee values('MONUG',54,'MALE',15000,'INDIA')
insert into tblEmployee values('AMARR',68,'FEMALE',13000,'JAPAN')
insert into tblEmployee values('AMARK',54,'MALE',18000,'UK')
insert into tblEmployee values('RAVIL',34,'MALE',19000,'CHINA')
insert into tblEmployee values('SONUQ',19,'FEMALE',155000,'PAKISTAN')
insert into tblEmployee values('RAKHI',66,'FEMALE',53000,'JAPAN')
insert into tblEmployee values('AVNI',59,'FEMALE',38000,'UK')
insert into tblEmployee values('SANTOSH',38,'MALE',83000,'CHINA')
insert into tblEmployee values('RAJESH',49,'MALE',77000,'PAKISTAN')
alter table tblEmployee add state varchar(100)
alter table tblEmployee add date_of_birth varchar(100)
date_of_birth
select * from tblEmployee
--------------------------------
select * from tblemployee
-------------------------------------------------------
select gender,salary from tblEmployee
select gender,sum(salary) from tblEmployee group by gender
select gender,count(*) from tblEmployee group by gender
select gender,sum(salary)as sum_salary from tblEmployee group by gender
select gender,sum(salary) sum_salary from tblEmployee group by gender
select gender,sum(salary) [sum salary] from tblEmployee group by gender

select gender,sum(salary)as sum_salary from tblEmployee where salary > 3999
group by gender
select gender,sum(salary)as sum_salary from tblEmployee where salary > 3999
group by gender having sum(salary) > 6000
------------------------------------------------------------------------------
alter table tblemployee drop column country
alter table tblemployee add country int
sp_rename 'tblemployee.conntry','country'
create table tblcountry 
(
cid int primary key identity,
cname varchar(50)
)
insert into tblcountry(cname)values('India'),('Pakistan'),('USA')
insert into tblcountry(name)values('Japan')

select * from tblemployee
select * from tblcountry
sp_rename 'tblcountry.cname','name'

select * from tblemployee 
join tblcountry on tblemployee.country=tblcountry.cid
select * from tblemployee
 inner join tblcountry on tblemployee.country=tblcountry.cid

select id,name,salary,gender,date_of_birth,cname from tblemployee join tblcountry on tblemployee.country=tblcountry.cid
select id,tblemployee.name,salary,gender,date_of_birth,tblcountry.name from tblemployee join tblcountry on tblemployee.country=tblcountry.cid
select id,tblemployee.name as ename,salary,gender,date_of_birth,tblcountry.name as cname from tblemployee join tblcountry on tblemployee.country=tblcountry.cid

select tblemployee.id,tblemployee.name,tblemployee.salary,tblemployee.gender,
tblemployee.date_of_birth,tblcountry.name 
from tblemployee join tblcountry 
on tblemployee.country=tblcountry.cid

select E.id,E.name as ename,E.salary,E.gender,E.date_of_birth,C.name as cname 
from tblemployee as E  join tblcountry as C
on E.country=C.cid

--JOIN
--1)INNER JOIN
--2)OUTER JOIN ---- A)LEFT JOIN  B)RIGHT JOIN   C)FULL JOIN
--3)CROSS JOIN
update tblemployee set country=55 where id=2

select * from tblemployee
 join tblcountry on tblemployee.country=tblcountry.cid
 -------------------------------------------------------------------------------------------
select * from tblemployee
 left join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
left outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
right join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
right outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
full outer join tblcountry on tblemployee.country=tblcountry.cid

select * from tblemployee 
cross join tblcountry 

select * from tblemployee 
left join tblcountry on tblemployee.country=tblcountry.cid 
where tblcountry.name is null


select E.id,E.name as ename,E.salary,E.gender,E.date_of_birth,C.name as cname 
from Neptune_130102.dbo.tblemployee as E  join dddd.dbo.tblcountryy as C
on E.country=C.cid

--SELF JOIN
create table Student
(
sid int primary key identity,
sname varchar(50),
srname int
)
insert into Student(sname,srname)values('soni',9)
insert into Student(sname,srname)values('moni',3)
insert into Student(sname,srname)values('joni',6)
insert into Student(sname,srname)values('toni',5)


select * from Student
select * from tblemployee

select  A.sname as Student,B.sname as SrName
from Student as A  join Student as B
on A.srname=B.sid

select  A.sname,B.sname
from Student as A full join Student as B
on A.srname=B.sid

--------------------------------------------------------------------------------------
select * from tblemployee
select name,gender from tblemployee
select name+gender from tblemployee
select (name+gender)as details from tblemployee
select (name+ ' ' +gender)as details from tblemployee
-------------space query-------------------------------------
select (name + space(5) + gender)as details from tblemployee
select (name + space(5) + gender + space(5) + salary)as details from tblemployee -- error
select (name + space(5) + gender + space(5) + convert(varchar(50),salary))as details from tblemployee
select (name + space(5) + gender + space(5) + cast(salary as varchar(50)))as details from tblemployee
-----------------------
select id,name,gender,salary,convert(varchar(50),date_of_birth,106) as dob,country from tblemployee
select id,name,gender,salary,convert(varchar(50),date_of_birth,103) as dob,country from tblemployee
select id,name,gender,salary,cast(date_of_birth as varchar(50)) as dob,country from tblemployee

------------------------------NEW QUERY----------------SQL-------------------------------------------------
---------------------------------CSAT------------------------------------------------------------

create table employe
(
eid int,
name varchar(20),
mobile varchar(10),
city varchar(20),
department varchar(20) , 
salary int
)

select * from employe

insert into employe values(1,'deepak','9874561234','Delhi','php',15000)
insert into employe values(22,'ajay','9874564534','Noida','asp',16000)
insert into employe values(33,'sunil','9874545234','Agra','android',25000)
insert into employe values(44,'ashish','9874561234','chandigarh','windows',28000)
insert into employe values(65,'deepkia','9878561234','kolkatta','linux',17000)
insert into employe values(16,'namrata','9823561234','aligarh','C',13000)
insert into employe values(23,'sanjay','9878961234','hathras','c++',17000)
insert into employe values(67,'nishant','9890561234','kochi','unix',20000)
insert into employe values(78,'shikhar','9809561234','jalhandar','solaris',28000)
insert into employe values(101,'nitin','9874561234','Mathura','phonegap',18000)
insert into employe values(98,'harendra',null,'jalhandar','solaris',88000)

select * from employe

select eid , name from employe

select eid , name from employe where eid=65


delete employe
drop table employe

select eid , name ,  salary as 'Old Salary','New salary '= (1.1) * salary from employe

select * from employe where name like 'a%' or name like 'd%' or name like 's%'

select * from employe
select * from employe where name like '[ads]%'
select * from employe where name like '[^ads]%'


select * from employe where name like '%[lkt]'

select * from employe where name like '[ads]%[lkt]'

select * from employe where name like '[ads]%k'

select * from employe where mobile is null

select * from employe where mobile is not null

--displaying details in order


select * from employe order by eid asc

select * from employe order by eid 

select * from employe order by eid desc

-- retreiving the top details ....


select * from employe

select top 3 * from employe

select top 3 eid ,name from employe

select top 3 * from employe order by salary desc

select top 3 * from employe order by salary 

--------retreiving distinct values ----------------

select city from employe

------------------distinct-----alphebitcal(a to z)---------------------------------------
select distinct city from employe

------------------------------String functions --------------------------

--Are used to manipulate varchar or char type columns in the table

select  ASCII('c') as 'ASCII VAlue'

select CHAR(97) as 'Character Value'


select CHARINDEX('e','hello')

select CHARINDEX('a',name) from employe

select name  from employe where CHARINDEX('a',name) = 5


select LEFT(name,3) from employe

select name  from employe where LEFT(name,3) = 'dee'

select right(name,3) from employe

select name  from employe where right(name,1) = 'a'

----equlvialent like query

select name from employe where name like '%a'

---------------

select LEN(name) from employe

select name from employe where LEN(name) >4

select UPPER(name) from employe

select lower(name) from employe

select * from employe

select REPLACE(name,'ee','i') from employe

select name , REVERSE(name) as 'Reverse name ' from employe

select name from employe where name = REVERSE(name)

select stuff('weather',2,2,'i')

select name ,STUFF(name,2,3,'***') from employe

select name , SUBSTRING(name,2,3) from employe

select name , SUBSTRING(name,1,3) from employe -- same as left working

select name , SUBSTRING(name , len(name)-2,3) from employe --same as right working


select * from employe

select name + ' lives in '  + city  from employe


select eid + 'is : '+ name from employe--- error due to conversions


select CONVERT(char(3),eid) + 'is : ' + name from employe

-------Date Functions ----------------------------
---- functions are used to manipulate the datateime coumns values----------------

-----Date parts -------------
/*
    yy,yyyy - year
	qq,q - quarter
	mm,m -- month
	dy-- day of year
	day -- dd,d
	week -- wk
	weekday -- Dw
	hour -- hh
	minute -- mi
	second -- ss
	millisecond -- ms
 */
 
 --date functions 
select GETDATE()
------to change the format of date we will use convert functions
select CONVERT(varchar(20),getdate(),1)
select CONVERT(varchar(20),getdate(),2)

select CONVERT(varchar(20),getdate(),3)--indian date
select CONVERT(varchar(20),getdate(),4)--indian date
select CONVERT(varchar(20),getdate(),5)--indian date

select CONVERT(varchar(20),getdate(),6)
select CONVERT(varchar(20),getdate(),7)
select CONVERT(varchar(20),getdate(),8)

select CONVERT(varchar(20),getdate(),9)--time 

select CONVERT(varchar(20),getdate(),10)

-----------------------------------------------------------------

select DAY(getdate())
select DATEPART(dd,getdate())
select DATENAME(dd,getdate())


select MONTH(getdate())
select DATEPART(mm,getdate())
select DATENAME(mm,getdate())

select YEAR(getdate())
select DATEPART(yy,getdate())
select DATENAME(yy,getdate())

select DATEPART(dw,getdate())
select DATENAME(dw,getdate())


select DATEPART(qq,getdate())
select DATEPART(dy,getdate())


select DATEPART(wk,getdate())

select DATEPART(hh,getdate())
select DATEPART(mi,getdate())
select DATEPART(ss,getdate())


select DATEADD(dd,5,getdate())
select DATEADD(mm,5,getdate())
select DATEADD(yy,5,getdate())

select DATEADD(dd,5,getdate()),DATEADD(mm,5,getdate()),DATEADD(yy,5,getdate())


create table emp (id int , name varchar(20) , dob datetime)

drop table emp

insert into emp values (1,'abhay','03/21/1992')
insert into emp values (1,'samid','03/06/1992')
select * from emp

select DATEDIFF(YY,dob,GETDATE()) from emp

select DATENAME(dw,dob) from emp
-------------------------------------------------------------------
-------------Mathematical Functions ------------------------------
select ABS(23)
select ABS(-23)
select CEILING(8.3)
select Floor(8.3)
select ROUND(34.568,2)
select ROUND(34.568,1)
select ROUND(34.568,0)
select ROUND(34.568,-1) ---30.00
select ROUND(37.568,-1) --- 40.00
select ROUND(34.568,-2)--0.000
select PI()
select round(PI(),2)
select LOG(100)
select LOG10(100)
select POWER(4,3)
select RAND()
select floor(RAND()*10)
select floor(RAND()*100)
select SQRT(64)
select SQRT(63)
select SIGN(-33)
select SIGN(34)
select SIGN(0)
--- will return conutries whose temperature is less than 0.
select countryname from world where SIGN(countrytemperature) = -1 
------------------------Aggregate Functions ---------------------------
---- Max(), Min() , Sum() , Avg() , Count()
select * from employe
select SUM(salary) from employe
select Avg(salary) from employe
select MAx(salary) from employe
select min(salary) from employe
select count(salary) from employe
select COUNT(city) from employe
select COUNT(distinct city) from employe
------------------------------------------------------------------------
----------------------------------Joins---------------------------------
-- why do we need joins ??
--------
-----Joins --
	--- A.Inner Joins
	----B.Outer Joins
		--i.Left Outer Join
		--ii.Right Outer Join
		-- iii. Full outer
	---C.Cross Joins
	---D.Self Joins
	---E.Equi Joins	
----------------------------------Inner Joins---------------------------------
create database db_270122
use db_270122
create table EmpCompany
(
eid int,
ename varchar(20),
department varchar(20), 
designation varchar(20) , 
doj datetime
)
drop table EmpCompany
select * from EmpCompany
insert into EmpCompany values(101,'Amit','IT','Software Engineer','03/24/2001')
insert into EmpCompany values(99,'Sumit','Sales','Sales Executive','01/18/2002')
insert into EmpCompany values(109,'Ajay','IT','Software Executive','01/4/2003')
insert into EmpCompany values(200,'Anant','IT','Project Manager','02/17/2004')
insert into EmpCompany values(100,'Amir','Sales','Sales Manager','03/29/2002')
insert into EmpCompany values(65,'Anshul','IT','Platmorm MAnager','04/21/2005')
insert into EmpCompany values(111,'Deepak','Bussines','Bussiness Develop','04/21/2002')
		

select * from empcompany
select * from empdetails

select ename from empcompany

create table empdetails 
(
eid int,
mobile varchar(20),
city varchar(20),
dob datetime
)
insert into empdetails values (99,'98745712474','Delhi','01/15/1985')
insert into empdetails values (101,'98745712474','Noida','01/15/1983')
insert into empdetails values (109,'98745712474','Kolkatta','01/15/1990')
insert into empdetails values (200,'98745712474','Chandigarh','01/15/1982')
insert into empdetails values (100,'98745712474','Lucknow','01/15/1988')
insert into empdetails values (65,'98745712474','Mumbai','01/15/1985')
select * from empcompany
select * from empdetails
--first way
select  empdetails.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob 
from empcompany inner join empdetails on empcompany.eid=empdetails.eid
--second way
select  ec.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob 
from empcompany ec join empdetails ed on ec.eid=ed.eid
--third way
select  ec.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob 
from empcompany ec , empdetails ed where ec.eid=ed.eid

create table empextra 
(
eid int , 
hobby varchar(20), 
interest varchar(20) 
)
insert into empextra values(100,'reading books','cooking')
insert into empextra values(65,'playing games','playing')
insert into empextra values(101,'reading comics','outing')
insert into empextra values(99,'reading news','chatting')
select * from empcompany
select * from empdetails
select * from empextra
select  ec.eid , 
		ename,
		department,
		designation,
		doj,
		mobile,
		city,
		dob,
		hobby,
		interest 
from empcompany ec , empdetails ed  , empextra ee where ec.eid=ed.eid and ed.eid = ee.eid
-----------------------------Outer Join -------------------------------------
---- Left Outer Join ----------------
drop table A
drop table B

create table A
(
eid int, 
ename varchar(20) , 
edepartment varchar(20)
)
insert into A values(1,'deepak','IT')
insert into A values(2,'ajay','Sales')
insert into A values(3,'sanjay','Bussines')
create table B
(
eid int , 
ecity varchar(20), 
emobile varchar(10)
)
insert into B values(1,'Agra','989747847')
insert into B values(2,'Delhi','987457474')
insert into B values(4,'Noida','98745747')
select * from A
select * from B
select A.eid , ename , edepartment , ecity , emobile from A left outer join B on A.eid = B.eid
select B.eid , ename , edepartment , ecity , emobile from A right outer join B on A.eid = B.eid
select A.eid , ename , edepartment , ecity , emobile from A full outer join B on A.eid = B.eid
----------------------------------Group by -----------------------------------------
select * from employe
select * into empd from employe where eid <= 65
select * from empd
update empd 
set department='asp' where eid=44 OR eid=16
update empd 
set department='php' where eid=33 OR eid=65 or eid=23
select department , SUM(salary) as 'Total salary' from empd group by department
select department , SUM(salary) as 'Total salary' from empd group by department having sum(salary)>58000
-----------------------------------Subqueries ---------------------------------
select * from employe
select * from A
select * from B
select * from employe where city in ('agra','delhi','noida')
select * from employe where city in ( select ecity from B )
select * from employe where city in ( select ecity from B where emobile='989747847')
select * from employe where city = (select ecity from B where emobile='989747847')
select * from employe where exists ( select ecity from B where emobile='98974784712')
select * from employe where exists ( select ecity from B where emobile='989747847')
---------------------------------------Constraints-----------------------------------------
/*
Implementing Data Integrity:
A.Entity Integrity --
B.Domain Integrity --
C.Referential integrity --
D.User defined integrity : by set of rules.

can maintain integrity by below ways :
A.Applying constraints with Enabling and disabling constraints.
B.Applying rules
C.User defined data types
Constraints :
A.Primary Keys Constraint
B.Unique Keys ''
C.Foreign Keys ''
D.Check Constraint
E.Default Constraint
*/
create table employedetails
(
	eid int primary key ,
	ename varchar(20) not null default 'Admin',
	emobile varchar(10) unique,
	ecity varchar(20) check ( ecity in ('Agra','Noida','Delhi'))  default 'Agra' ,
	eage int check ( eage between 20 and 25),
	egender char(1) check (egender in ('F','M'))
)	  
insert into employedetails values(101,'deepak','987414784','Agra',23,'M')
insert into employedetails values(102,'deepak','987414785','Agra',23,'M')
insert into employedetails values(103,'deepak','987414781','Delhi',24,'M')
insert into employedetails values(104,default,'987414782',default,24,'M')
select * from employedetails
insert into employedetails(eid,emobile,eage,egender) values (105,'87471477',24,'F')
-------------------------------------------Identity columns---------------------------------
create table employe1 
(
	id int identity(100,1) primary key , 
	ename varchar(20) not null,
	department varchar(30) not null,
	doj datetime not null
)
select * from employe1
-- adding columns  by using alter table
alter table employe1
add designation varchar(20) not null
drop table employe1
create table employe1 
(
	id int identity(100,1) primary key , 
	ename varchar(20) not null,
	department varchar(30) not null,
	designation varchar(20) not null,
	doj datetime not null
)
insert into employe1 values('Deepak Singh','IT','Software Enginner','09/03/2014')
insert into employe1 values('Abhay Singh','SALES','Sales Manager','02/08/2014')
select * from employe1
create table epms
(
id int primary key identity,
name varchar(50), age int, salary int, rollno int, address varchar(50)
)

CREATE TABLE [dbo].[Orders]
(
	order_id INT,
	order_date DATE,
	customer_name VARCHAR(250),
	city VARCHAR(100),	
	order_amount MONEY
)
 
INSERT INTO [dbo].[Orders]
SELECT '1001','04/01/2017','David Smith','GuildFord',10000
UNION ALL	  
SELECT '1002','04/02/2017','David Jones','Arlington',20000
UNION ALL	  
SELECT '1003','04/03/2017','John Smith','Shalford',5000
UNION ALL	  
SELECT '1004','04/04/2017','Michael Smith','GuildFord',15000
UNION ALL	  
SELECT '1005','04/05/2017','David Williams','Shalford',7000
UNION ALL	  
SELECT '1006','04/06/2017','Paum Smith','GuildFord',25000
UNION ALL	 
SELECT '1007','04/10/2017','Andrew Smith','Arlington',15000
UNION ALL	  
SELECT '1008','04/11/2017','David Brown','Arlington',2000
UNION ALL	  
SELECT '1009','04/20/2017','Robert Smith','Shalford',1000
UNION ALL	  
SELECT '1010','04/25/2017','Peter Smith','GuildFord',500
 --------------------------------------------------------------------
 SELECT city, SUM(order_amount) total_order_amount
FROM [dbo].[Orders] GROUP BY city
---------------------------------------------------------------
SELECT order_id, order_date, customer_name, city, order_amount
 ,SUM(order_amount) OVER(PARTITION BY city) as grand_total 
FROM [dbo].[Orders]
------------------------------------------------------------------------
SELECT order_id, order_date, customer_name, city, order_amount
 ,AVG(order_amount) OVER(PARTITION BY city, MONTH(order_date)) as   average_order_amount 
FROM [dbo].[Orders]
-------------------------------------------------------------------------------------------------
SELECT order_id, order_date, customer_name, city, order_amount
 ,MIN(order_amount) OVER(PARTITION BY city) as minimum_order_amount 
FROM [dbo].[Orders]
-------------------------------------------------------------------------------------------
SELECT order_id, order_date, customer_name, city, order_amount
 ,MAX(order_amount) OVER(PARTITION BY city) as maximum_order_amount 
FROM [dbo].[Orders]
 ----------------------------------------------------------------------
 SELECT city,COUNT(DISTINCT customer_name) number_of_customers
FROM [dbo].[Orders] 
GROUP BY city
---------------------------------------------------------------------------------
SELECT order_id, order_date, customer_name, city, order_amount
 ,COUNT(DISTINCT customer_name) OVER(PARTITION BY city) as number_of_customers
FROM [dbo].[Orders]
-----------------------------------------------------------------------------
SELECT order_id, order_date, customer_name, city, order_amount
 ,COUNT(order_id) OVER(PARTITION BY city) as total_orders
FROM [dbo].[Orders]
 ----------------------------------------------------------------------
 SELECT order_id,order_date,customer_name,city, 
RANK() OVER(ORDER BY order_amount DESC) [Rank]
FROM [dbo].[Orders]
------------------------------------------------------------------------
SELECT order_id,order_date,customer_name,city, order_amount,
DENSE_RANK() OVER(ORDER BY order_amount DESC) [Rank]
FROM [dbo].[Orders]
---------------------------------------------------------------------
SELECT order_id,order_date,customer_name,city, order_amount,
ROW_NUMBER() OVER(ORDER BY order_id) [row_number]
FROM [dbo].[Orders]
-----------------------------------------------------------------------
SELECT order_id,order_date,customer_name,city, order_amount,
ROW_NUMBER() OVER(PARTITION BY city ORDER BY order_amount DESC) [row_number]
FROM [dbo].[Orders]
 --------------------------------------------------------------------
 SELECT order_id,order_date,customer_name,city, order_amount,
NTILE(4) OVER(ORDER BY order_amount) [row_number]
FROM [dbo].[Orders]
-----------------------------------------------------------------------------
SELECT order_id,customer_name,city, order_amount,order_date,
 --in below line, 1 indicates check for previous row of the current row
 LAG(order_date,1) OVER(ORDER BY order_date) prev_order_date
FROM [dbo].[Orders]
 ----------------------------------------------------------------------------
 SELECT order_id,customer_name,city, order_amount,order_date,
 --in below line, 1 indicates check for next row of the current row
 LEAD(order_date,1) OVER(ORDER BY order_date) next_order_date
FROM [dbo].[Orders]
-------------------------------------------------------------------------------------
SELECT order_id,order_date,customer_name,city, order_amount,
FIRST_VALUE(order_date) OVER(PARTITION BY city ORDER BY city) first_order_date,
LAST_VALUE(order_date) OVER(PARTITION BY city ORDER BY city) last_order_date
FROM [dbo].[Orders]
-------------------------------------------------------------------------------------
CREATE TABLE ExamResult
(StudentName VARCHAR(70), Subject     VARCHAR(20),  Marks       INT);
INSERT INTO ExamResultVALUES('Lily',  'Maths',  65);
INSERT INTO ExamResultVALUES('Lily',  'Science',  80);
INSERT INTO ExamResultVALUES('Lily',  'english',  70);
INSERT INTO ExamResultVALUES('Isabella',  'Maths',  50);
INSERT INTO ExamResultVALUES('Isabella',  'Science',  70);
INSERT INTO ExamResultVALUES('Isabella', 'english', 90);
INSERT INTO ExamResultVALUES('Olivia', 'Maths', 55);
INSERT INTO ExamResultVALUES('Olivia',  'Science',  60);
INSERT INTO ExamResultVALUES('Olivia',  'english',  89);
===================================Used Query In Neptune India=======================================================
select * from MASTER_DEVICE where device_slno in ('100931','82412','90874','55981','268850','82422','92498')
--update master_device set sync='0' where device_slno in ('100931','82412','90874','55981','268850','82422','92498')
-----------------------------------------------------------------------------------------------------------------------------
select * from master_account where ca_address='A-001'
select * from master_device where ca_no=1
select * from master_smartmode_data where device_slno=6545
update master_smartmode_data set cut_limit='-500' where device_slno=878447
-------------------------------------------------------------------------------------------------------------------------------------
1. Receive data

 select a.ca_no,ca_name,ca_address,b.device_slno from master_account a,master_device b where a.ca_no=b.ca_no and b.status='active'
 order by ca_no
----------------------------------------------------------------------------------------------------------------------------------
2. Dublicate entry
 select ca_address,count(ca_address) as cnt from master_account group by ca_address having count(ca_address)>1
 select *From master_account where ca_address='I-2203'
 select *From master_device where ca_no in (27,192)
 delete from master_account where ca_no =193
 delete from master_account where ca_no in (27,192)
 ----------------------------------------------------------------------------------------------------------------------------------------
3.sync

update master_device set sync=0 where device_slno ='96864'
---------------------------------------------------------------------------------------------------------------------------------------------------------
4. find k_number on ip
   select * from MASTER_CONNECTION a,MASTER_DEVICE b where a.CONNECTION_ID=b.CONNECTION_ID
   order by a.CONNECTION_ID,b.K_NUMBER
---------------------------------------------------------------------------------------------------------------------------------------------
5. Update eb and pv reading 0 single select
   update master_device set eb_opening_reading=0,eb_pv_reading=0 where device_slno ='626249'
----------------------------------------------------------------------------------------------------------------------------------------------
6. Update eb and pv reading 0 multiselect select
   update master_device set eb_opening_reading=0,eb_pv_reading=0 where device_slno in('626249')

update master_device set eb_opening_reading=0,eb_pv_reading=0 where device_slno in ('626254','626260','626298','685618','685622','685625','685626','685638','685641','685646','685656','685659','685662','685663','685665','685672','685682','685696','685698','685699','685701','685704','685709','685722','685729','685742','685964','685976','685981','685988','685998','686015','686020','686026','686029','686040','686044','686046','686047','686061','686064','686067','686073','686076','686080','686093','686094','686095','686097','686102','686104','686111','686126','686140','686176','686177','686182','686184','686185','686196','686197','686205','686213','686222','686223','686227','686231','686234','686237','686238','686239','686250','686255','686257','686264','686266','686267','686268','686272','686277','686281')
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
7. Cut limit set = 0
   update master_smartmode_data set cut_limit=0 where device_slno in ('761785,761775,761802,761693,761797,761829')
--------------------------------------------------------------------------------------------------------------------------------------------------------
8. JOIN      
   select * from MASTER_MODELS
   FULL join  MASTER_CONNECTION ON MASTER_MODELS.DEVICE_ID = MASTER_CONNECTION.CONNECTION_ID 
   FULL join  MASTER_AREA ON MASTER_MODELS.DEVICE_ID = MASTER_AREA.AREA_ID
----------------------------------------------------------------------------------------------------------------------------------------------------------
9. bill table
select * from trns_billdetail where meter_slno ='66965' order by rowid
---------------------------------------------------------------------------------------------------------------------------------------------------------
10. recharge
    select * from trns_action
    select * from trns_voucher where voucherno ='1216'
    insert into trns_action values('617632','RECHARGE','2600,1','DAL_Driver',NULL,NULL,1216,'NEW',1,1)
    select * from master_device
-----------------------------------------------------------------------------------------------------------------------------------------
11. excel update with join
    select * from master_accounts
    select * from master_smartmode_data
    select * from data130122
    select * from data130122 as a,master_smartmode_data as b where a.device_slno=b.device_slno
    update master_smartmode_data set monthrent=a.monthly_rent,cut_limit=b.cut_limit from data130122 as a,master_smartmode_data as b where     a.device_slno=b.device_slno
JOIN
select  a.device_id, device_slno, b.ip_port from master_device as a, master_connection as b where a.connection_id=b.connection_id and a.device_slno in ('602042','602077','602064','602307','601854','602248','602197','601637','602150','602205','732511','601813','732453','601933','617578','602106','601688','602144','602328','618203','602191','608833','601991','602169','617165','612630','602162','601868','601940','732586','732541','602180','601896','601691')
select * from trns_voucher where reference_no='686131' order by voucherno
select a.device_id, device_slno, b.ca_name, ca_address, user_id, user_password from master_device as a, master_account as b where a.ca_no=b.ca_no and status ='active'
select * from master_device a, ems_prepost_archive_auraservice.dbo.trns_daily_reading b where a.device_slno = b.device_slno and cast (b.[date] as date) = '2021-12-31'
select* from master_user
select * from master_device where plan_id= 1
select  a.device_id a, b.device_slno, 
select * from master_device where plan_id= 4
select * from master_account
select  a.device_id, device_slno, b.ca_address, ca_name from master_device as a, master_account as b where a.ca_no=b.ca_no and plan_id=1 
update master_device set plan_id=4 
select  a.device_id, device_slno, b.ca_address, ca_name from master_device as a, master_account as b where a.ca_no=b.ca_no and plan_id=4 
update master_device set plan_id=4 
insert_auto_plandata 4,''
exec_allactions
----------------------------------------------------------------------------------------------------------------------------------------------------------
use ems_prepost_NAVODAYASAMPTA
--update master_smartmode_data set cut_limit =('-1500') 
select * from master_device a, ems_prepost_archive_NAVODAYASAMPTA.dbo.trns_daily_reading b where a.device_slno = b.device_slno and cast (b.[date] as date) = '2021-12-31'
--update master_device set opening_balance=b.pv_bal from master_device a, ems_prepost_archive_NAVODAYASAMPTA.dbo.trns_daily_reading b where a.device_slno = b.device_slno and cast (b.[date] as date) = '2021-12-31'
select * from master_user
select * from master_device
select min (last_update_dttm), max (last_update_dttm) from master_device where last_update_dttm > '2022-02-08'
================================================MAX QUERY TO EB And DG======================================================
==================================================================================
select *fROM TEMP_USERDATA-----------This is Impot Excel File
select *fROM Parameter_Feb2022
select *fROM Parameter_Jan2022
truncate table Parameter_Feb2022
truncate table Parameter_Jan2022
----------------------------------------------------------------------
INSERT INTO Parameter_Feb2022 (TRNS_DT_TM,K_NUMBER,Import_ApperantEnergy)
SELECT '2022-02-20',K_NUMBER,feb_READING fROM TEMP_USERDATA
WHERE [REVENUE HEAD] ='DG-Power Backup'
-----------------------------------------------------------------------
select *fROM Parameter_Feb2022
INSERT INTO Parameter_Jan2022 (TRNS_DT_TM,K_NUMBER,Import_ApperantEnergy)
SELECT '2022-02-20',K_NUMBER,feb_READING fROM TEMP_USERDATA
WHERE [REVENUE HEAD] ='EB-Power Backup'
select *fROM Parameter_Jan2022
-----------------------------------------------------------------------
update Parameter_Feb2022  set  Export_ApperantEnergy =b.FEB_reading
from Parameter_Feb2022 a,TEMP_USERDATA b where a.K_NUMBER =b.K_NUMBER
and b.[revenue head] ='DG-Power Backup'
------------------------------------------------------------------------
UPDATE Parameter_Jan2022 SET TRNS_DT_TM ='2022-01-30'
update Parameter_Jan2022  set  Export_ApperantEnergy =b.FEB_reading
from Parameter_Jan2022 a,TEMP_USERDATA b where a.K_NUMBER =b.K_NUMBER
and b.[revenue head] ='DG-Power Backup'
=====================================================================================
use ems_prepost_mvn
select * from trns_daily_reading join master_device where last_update_dttm > '2022-02-08'
select a.eb_pv_reading-b.eb_pv_reading as cons, *from master_device a,ems_prepost_archive_mvn.dbo.trns_daily_reading b where a.device_slno=b.device_slno and cast(b.[date] as date)='2022-02-08'  and a.eb_pv_reading-b.eb_pv_reading>0
select eb_pv_reading-eb_opening_reading as consumption,* from ems_prepost_archive_mvn.dbo.trns_hourly_reading where device_slno ='74833' and 
cast([date] as date)>'2022-02-08'  order by device_slno,date desc
---------------------------------------------------------------------------------------------------------------------------------------------------
use ems_prepost_mvn
select device_slno,date, eb_pv_reading-eb_opening_reading as consumption  from ems_prepost_archive_mvn.dbo.trns_hourly_reading where  
cast([date] as date)>'2022-02-08'  order by device_slno,date desc
-----------------------------------------------------------------------------------------------------------------------------------------------------
--use ems_prepost_EXPERION
--select * from trns_action where device_slno=37929
--update trns_action set status='NEW' where voucherno=25628
select * from trns_voucher where voucherno='25628'
  --select * from trns_action
  --  select * from trns_voucher where voucherno ='25628'
  -- update trns_voucher set status='N'  where voucherno ='25628'
SELECT * FROM TRNS_ACTION where device slno='37929' 
insert into trns_action values('37929','RECHARGE','1000,1','DAL_Driver',NULL,NULL,25628,'NEW',1,1)
--select pv_bal-L_S, a.device_slno, pv_bal, L_S  from master_device a join master_account on a.ca_no=master_account.ca_no join sheet1$ on sheet1$.ca_address=master_account.ca_address
--update master_device set pv_bal= pv_bal-L_S from master_device a join master_account on a.ca_no=master_account.ca_no join sheet1$ on sheet1$.ca_address=master_account.ca_address
select * from master_user
-----------------------------------------------------------------------------------------------------------------------------------------------------
use ems_prepost_sscoralwood
select * from master_device
select * from master_account where group_name='tower f'
select a.ca_no,ca_name,ca_address,group_name, b.device_slno,plan_id from master_account a,master_device b where a.ca_no=b.ca_no and group_name in ('tower f','tower g')
--update master_device set plan_id=4 from master_account a,master_device b where a.ca_no=b.ca_no and group_name in ('tower f','tower g')
select * from trns_hourly_reading where date='2022-02-26 00:02:09.953'
select a.ca_address,ca_name, b.eb_opening_reading, dg_opening_reading, eb_pv_reading, dg_pv_reading,date from master_account a,ems_prepost_archive_m3m.dbo.trns_hourly_reading b where a.ca_no=b.ca_no and date='2022-01-31 12:01:52.280'
union all
select a.ca_address,ca_name, b.eb_opening_reading, dg_opening_reading, eb_pv_reading, dg_pv_reading,date from master_account a,ems_prepost_archive_m3m.dbo.trns_hourly_reading b where a.ca_no=b.ca_no and date='2022-02-26 00:02:09.953'               
--select * from trns_hourly_reading where device_slno='90911'
============================================================================
select * from MASTER_SMARTMODE_DATA where Meter_PVBal<0
select * from master_account where ca_address='T1-119'
select * from MASTER_DEVICE where DEVICE_SLNO=101935

select * from TRNS_ACTION WHERE ACTION_TYPE='DISCONNECTIONS'
==========================Cut Limit Increse Decrese Query==============================================================
use Ems_prepost_MVN
select * from master_account
select * from master_account where ca_address='6-1101'
SELECT * FROM master_device where ca_no=209
select * from master_smartmode_data where device_slno=602311
--update master_smartmode_data set cut_limit='-12500' where device_slno=602311
------------------====================================================-------------------------------------
select * from master_account                   -----CA_NO,ca_address
select * from MASTER_DEVICE                    -------device_id,device_slno,Sanction_load_Eb,Sanction_Load_dg,alert_amount,Status
--------------------------------------------------------------------------------------------------------------------------
select * from MASTER_CONNECTION                --------------Status,CONNECTION_ID,IP_PORT
select * from master_smartmode_data            ---------------Alert Amount
select * from dreamtest
select a.ca_no,ca_name,ca_address,b.device_slno from master_account a,master_device b where a.ca_no=b.ca_no and b.status='active'
 order by ca_no
 select a.device_id, device_slno, b.ca_name, ca_address, user_id, user_password from master_device as a, master_account as b where a.ca_no=b.ca_no and status ='active'
 --Device_id,Device_slno,Connection_id,Ca_No,Status,Sanction_load_Eb,Sanction_Load_dg, Alert_Amount500-Active					
	 --update MASTER_CONNECTION set monthrent=a.monthly_rent,cut_limit=b.cut_limit from data130122 as a,master_smartmode_data as b where a.device_slno=b.device_slno
select distinct a.CA_NO,ca_address,b.device_slno,device_id,Sanction_load_Eb,Sanction_Load_dg,alert_amount,c.CONNECTION_ID,IP_PORT from master_account a,master_device b,MASTER_CONNECTION c where a.ca_no=b.ca_no and b.status='active'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
select a.CA_NO,ca_address,b.device_slno,device_id,Sanction_load_Eb,Sanction_Load_dg,alert_amount from  master_account a,master_device b where a.ca_no=b.ca_no and b.status='active' 

select a.CA_NO,ca_address,b.device_slno,device_id,Sanction_load_Eb,Sanction_Load_dg,alert_amount,c.CONNECTION_ID,IP_PORT from master_account a,master_device b,MASTER_CONNECTION c where a.ca_no=b.ca_no and b.status='active' 

--INSERT INTO MASTER_DEVICE (Device_id,Device_slno,ca_address,Sanction_Load_Eb,Sanction_load_DG,IP_Port)
--SELECT Device_id,Device_slno,ca_address,Sanction_Load_Eb,Sanction_load_DG,IP_Port fROM dreamtest

select a.CA_NO,ca_address,b.device_slno,device_id,Sanction_load_Eb,Sanction_Load_dg,alert_amount,c.CONNECTION_ID,IP_PORT from master_account a,master_device b,MASTER_CONNECTION c where a.ca_no=b.ca_no and b.status='active'
--------------------------------------------------------------------
select * from dreamtest
select * from MASTER_CONNECTION  

INSERT INTO MASTER_CONNECTION (IP_PORT)
SELECT DISTINCT IP_PORT fROM dreamtest
===========================================
select * from MASTER_DEVICE 

INSERT INTO MASTER_DEVICE (device_id,device_slno,Sanction_load_EB,Sanction_Load_DG,alert_amount,Status)
SELECT device_id,device_slno,Sanction_load_EB,Sanction_Load_DG,500,'active' fROM dreamtest

INSERT INTO master_account (CA_NO,ca_address)
SELECT CA_NO,ca_address fROM dreamtest
===========================================
select * from master_account 

insert into master_device a.CA_NO,ca_address,b.device_slno,device_id,Sanction_load_Eb,Sanction_Load_dg,alert_amount,c.CONNECTION_ID,IP_PORT from master_account a,master_device b,MASTER_CONNECTION c from data150322 a,master_device b  where a.ca_no=b.ca_no and b.status='active'

--INSERT INTO master_device (device_id,device_slno,Sanction_load_Eb,Sanction_Load_dg,alert_amount,Status) select dreamtest.* from (SELECT DISTINCT device_id,device_slno,Sanction_load_Eb,Sanction_Load_dg,500,'active') dreamtest LEFT JOIN master_device C ondreamtest.CA_NO = C.CA_NO where C.CA_NO IS NULL

select * from master_account 
select * from MASTER_DEVICE
select * from MASTER_CONNECTION
select * from DremHouse
alter table dreamtest add CONNECTION_ID varchar(100)
alter table dreamtest add status varchar(100)

--alter table dreamtest drop column F8 
--truncate table MASTER_CONNECTION

INSERT INTO MASTER_DEVICE (device_id,device_slno,Sanction_load_EB,Sanction_Load_DG,alert_amount,Status)
SELECT device_id,device_slno,Sanction_load_EB,Sanction_Load_DG,500,'active' fROM DremHouse

select * from DremHouse
select * from MASTER_CONNECTION  

INSERT INTO MASTER_CONNECTION (IP_PORT,STATUS)
SELECT DISTINCT IP_PORT,'active' fROM DremHouse

delete from  DremHouse where device_id=112

--update DremHouse set STATUS='active', CONNECTION_ID=(SELECT MASTER_CONNECTION.CONNECTION_ID FROM MASTER_CONNECTION 
--WHERE MASTER_CONNECTION.IP_PORT = DremHouse.IP_PORT)

INSERT INTO MASTER_DEVICE (device_id,device_slno,Sanction_load_EB,Sanction_Load_DG,alert_amount,Status,ca_no)
SELECT device_id,device_slno,Sanction_load_EB,Sanction_Load_DG,500,'active',ca_no fROM dreamtest

INSERT INTO DremHouse (IP_PORT,Status,CONNECTION_ID)
SELECT DISTINCT IP_PORT,'active',CONNECTION_ID fROM MASTER_CONNECTION
----------------------------------------------------------------------------------------------------------------------------
select * from master_account 
select * from MASTER_DEVICE
select * from MASTER_CONNECTION
select * from DH1603

INSERT INTO MASTER_CONNECTION (IP_PORT,STATUS)
SELECT DISTINCT IP_PORT,'active' fROM DH1603
--update DreamH set STATUS='active', CONNECTION_ID=(SELECT MASTER_CONNECTION.CONNECTION_ID FROM MASTER_CONNECTION 
--         WHERE MASTER_CONNECTION.IP_PORT = DreamH.IP_PORT)
INSERT INTO MASTER_DEVICE (device_slno,Sanction_load_EB,Sanction_Load_DG,alert_amount,Status)
SELECT device_slno,Sanction_load_EB,Sanction_Load_DG,500,'active' fROM DH1603

INSERT INTO master_account (ca_no,ca_address)
SELECT DISTINCT ca_no,ca_address fROM DH1603

INSERT INTO DH1603  (connection_id,ca_no)
SELECT DISTINCT connection_id,ca_no fROM MASTER_DEVICE 

INSERT INTO MASTER_DEVICE (device_id,device_slno,alert_amount,Sanction_load_EB,Sanction_Load_DG,STATUS)
SELECT device_id,device_slno,'500',Sanction_load_EB,Sanction_Load_DG,'active' fROM DH1603

select * into master_device_160322 from master_device  --backup table
--------------------------------------------------------------
select * from master_device_160322 from master_device

--SELECT CustomerName, ContactName, Address
--FROM Customers
--WHERE Address IS NULL;
======================================================================================================================
select * from master_account 
select * from MASTER_DEVICE
--truncate table MASTER_DEVICE
select * from MASTER_CONNECTION
select * from DH1603
--UPDATE DREAM160322 SET STATUS='Active'

INSERT INTO MASTER_CONNECTION (IP_PORT,STATUS)
SELECT DISTINCT IP_PORT,'active' fROM DH1603 
--UPDATE MASTER_CONNECTION SET SYNC=0 
--
INSERT INTO MASTER_DEVICE (DEVICE_SLNO,ALERT_AMOUNT,SANCTION_LOAD_EB,SANCTION_LOAD_DG,STATUS)
SELECT  DEVICE_SLNO,500,SANCTION_LOAD_EB,SANCTION_LOAD_DG,'active' fROM DH1603 

-----
INSERT INTO master_account (ca_address)
SELECT DISTINCT ca_address fROM DH1603 
--------
INSERT INTO DH1603 (status)
SELECT DISTINCT 'active' fROM master_account
----------------
INSERT INTO  DH1603 (ca_no,ca_address)
SELECT DISTINCT ca_no,ca_address fROM master_account
======================================================================================================================
--INSERT INTO MASTER_DEVICE (device_id,device_slno,alert_amount,Sanction_load_EB,Sanction_Load_DG,STATUS)
--SELECT DISTINCT device_id,device_slno,500,Sanction_load_EB,Sanction_Load_DG,'active' fROM DH1603
------------------------------------------------------------------------------------
INSERT INTO DH1603 (device_slno,alert_amount,Sanction_load_EB,Sanction_Load_DG,STATUS)
SELECT device_id,device_slno,'500',Sanction_load_EB,Sanction_Load_DG,'active' fROM  MASTER_DEVICE
======================---------------DreamHome-T9-------------------------------------------------===============================
select *from DHT9
 select * from MASTER_CONNECTION
 --alter table DHT9 add connection_id int,ca_no int

 insert into MASTER_CONNECTION
 select distinct ip_port ,'-','Active','',0 from DHT9

 update DHT9 set connection_id =b.CONNECTION_ID from DHT9 a,MASTER_CONNECTION b where a.ip_Port=b.IP_PORT
 
 select *From MASTER_ACCOUNT
 insert into MASTER_ACCOUNT
 select ca_address,ca_address,'','','','','','','',0,getdate(),1,0,0 from  DHT9

 update DHT9 set ca_no =b.ca_no from DHT9 a,master_account b
 where a.ca_address=b.CA_ADDRESS

 select * From DHT9
 select * From DHT9 where device_slno=730192
--delete from DHT9 where device_id=42
 select * From DHT9 where device_slno=733204
--delete from DHT9 where device_id=69
select * From DHT9 where device_slno=733959
--delete from DHT9 where device_id=120
select * From DHT9 where device_slno=734058
--delete from DHT9 where device_id=152
select * From DHT9 where device_slno=734135
--delete from DHT9 where device_id=105

 select * From MASTER_DEVICE
 insert into MASTER_DEVICE(DEVICE_ID,DEVICE_SLNO,CONNECTION_ID,PLAN_ID,CA_NO,STATUS,SANCTION_LOAD_EB,SANCTION_LOAD_DG)
 select device_id,device_slno,connection_id,11,ca_no,'Active',Sanction_load_eb,Sanction_load_dg from  DHT9
 -------------------------------------------------------------------------------------------------------------------------------------
 select * from dreamhouset9
-----------------------------------------------------
select *from dreamhouset9
 
 select * from MASTER_CONNECTION
 --alter table dreamhouset9 add connection_id int,ca_no int

 insert into MASTER_CONNECTION
 select distinct ip_port ,'-','Active','',0 from dreamhouset9

 update dreamhouset9 set connection_id =b.CONNECTION_ID from dreamhouset9 a,MASTER_CONNECTION b where a.ip_Port=b.IP_PORT
 
 select *From MASTER_ACCOUNT
 insert into MASTER_ACCOUNT
 select ca_address,ca_address,'','','','','','','',0,getdate(),1,0,0 from  dreamhouset9

 update dreamhouset9 set ca_no =b.ca_no from dreamhouset9 a,master_account b
 where a.ca_address=b.CA_ADDRESS

 select * From dreamhouset9
 select * From dreamhouset9 where device_slno=730192
--delete from dreamhouset9 where device_id=42
 select * From dreamhouset9 where device_slno=733204
--delete from dreamhouset9 where device_id=69
select * From dreamhouset9 where device_slno=733959
--delete from dreamhouset9 where device_id=120
select * From dreamhouset9 where device_slno=734058
--delete from dreamhouset9 where device_id=152
select * From dreamhouset9 where device_slno=734135
--delete from dreamhouset9 where device_id=105

 select * From MASTER_DEVICE
 insert into MASTER_DEVICE(DEVICE_ID,DEVICE_SLNO,CONNECTION_ID,PLAN_ID,CA_NO,STATUS,SANCTION_LOAD_EB,SANCTION_LOAD_DG)
 select device_id,device_slno,connection_id,11,ca_no,'Active',Sanction_load_eb,Sanction_load_dg from  dreamhouset9
 ============================================================================

 ======================================[Select_MobileAPI_NEPTUNE]============================================================
--SELECT top 30 
----CAST(DAY(DATE) AS VARCHAR(2)) + '-' +SUBSTRING(DATENAME(MONTH,DATE),1,3)
--format(dateadd(hh,-1,[Date]),'dd-MMM') as dt,EB_OPENING_READING,EB_PV_READING,  
--EB_PV_READING-EB_OPENING_READING AS EB_CONSUMPTION,(EB_PV_READING-EB_OPENING_READING)* EB_Rate AS [EBAmount],
--DG_OPENING_READING,DG_PV_READING,  
--DG_PV_READING-DG_OPENING_READING AS DG_CONSUMPTION,(DG_PV_READING-DG_OPENING_READING)* DG_Rate AS [DGAmount],
--Fixed_Charges AS [CAMAmount],PV_BAL [Balance]  
--FROM EMS_PREPOST_ARCHIVE_SIGNATUREGLOBALIVA.dbo.TRNS_DAILY_READING  where DEVICE_SLNO =  
--(SELECT MAX(DEVICE_SLNO) FROM MASTER_DEVICE A,MASTER_ACCOUNT B WHERE A.CA_NO=B.CA_NO 
----AND B.USER_ID =@userid
--and a.STATUS='Active')  
--and [DATE] >'2020-06-11'  
-- order by date desc
============================================[SELECT_CUSTOMER_DAILYSUMMARY]==================================================
--select TOP 30 left(CONVERT(VARCHAR,dateadd(hh,-1,[Date]),100),11) as Date,cast([eb] as numeric(18,2)) AS EB,cast([DG] as numeric(18,2)) as DG, cast(AMOUNT as numeric(10,2)) AS [COST],date as dt FROM 
--TRNS_MOBILE_CACHE_COMSUMPTION WHERE DEVICE_SLNO =(SELECT MAX(DEVICE_SLNO) FROM MASTER_DEVICE A,MASTER_ACCOUNT B WHERE A.CA_NO=B.CA_NO
----AND B.ca_no=@CA_NO 
--and a.STATUS='Active')  
--ORDER BY dt desc 
=========================================================
select * from Employees
-----------here Table are only one ...Using Two Method
select * from Employees
--================self join Using Where condition=========================

select a.name,a.address,a.Email_Id,a.Age,a.City,b.name,b.address  from Employees a,Employees b where a.id=b.id
--================self join Using INNER JOIN KEYWORD condition=========================

select a.name,a.address,a.Age,a.City,a.Email_Id,b.name,b.address  from Employees A INNER JOIN 
Employees B
ON a.id=b.id
========---------------------============
TOPICS SQL SERVER
Understanding Data,Database and Relational Database ?
Understanding Relational Database Management Systems and their usages?
Understanding Relational Operators like Restrict, Project, Product, Union, Intersect, Difference, Join and Divide .
Understanding Keys in RDBMS like Candidate Key, Alternate Key, Primary Key, Foreign key and Composite key.
Explaining Normalizing and Denormalizing Data ? 
Explaining Various Normalizing forms like 1NF , 2NF , 3NF and BCNF .
Introducing SQL Server ?
Explaining Application Architecture like Single Tier, Two- Tier , Three- Tier and N-Tier .
Explaining SQL ? Types of SQL Statements like DDL, DML, DQL and DCL .
Explaining Sql Server Management Studio and its working ?
Explaining Types of Data like Structured , Semi structured and Unstructured ?
Identifying Data types ?
Working with DQL statements with select command.
Selecting Retrieving attributes e.g. columns from table ?
Selecting the columns with customizing the display means changing the name of column for display ?
Performing Calculations on columns of tables with arithmetic operations ?
Retrieving selected rows with where clause and comparison operators  like =, < . >= etc?
Retrieving records with logical operators ? And, OR , NOT ?
Retrieving Records with range operators like between and not between 
Retrieving records with in and not in operators .
Retrieving Records that match a pattern with like keyword and wildcards .
Retrieving records that contain null values.
Retrieving records to be displayed in a sequence by using order by .
Retrieving records from the top of a table by using top keywords ?
Retrieving records from a particular position by using offset-fetch clause ?
Retrieving records without duplication of values by using distinct keyword ?
Working with string functions.
Working with Conversion functions 
Working with Date Functions.
Working with Mathematical functions.
Working with Aggregate functions.
Grouping data by using group by and having ?
Querying data by using joins .
Working with inner joins ?
Working with outer joins ? Like left outer, right outer  and full outer joins ?
Working with cross joins.
Working with self joins .
Working with Equi joins .
Working with Subqueries ?
Using in and exists keywords?
Working with Modified Comparison operators? Like  > ALL , > ANY , =ANY etc .
Combining result sets by using Union , Except and Intersect operators.
Explaining Various system databases like master, tempdb, model and msdb .
Explaining the database files  like primary,secondary and transaction log files.
Creating, altering, renaming and droping User-defined database.  
Creating, altering, renaming and droping  user defined tables as well as inserting rows and inserting partial data in it.
Working with identity property in tables.
Implementing Data integrity with Applying Constraints, Applying rules and creating user-defined data types.
Creating Synonyms of tables.
Copying table into new table.
Updating and deleting existing rows.
Difference between delete, drop and truncate .
Implementing Indexes e.g. clustered and nonclusterd indexes.
Understanding Views , creating , altering and droping views and understanding rules for views.
Understanding batches and variables and displaying user defined message.
Working with conditional constructs like if..else, case and while statements.
Error and exceptions handling by using Try-Catch.
Creating Stored Procedures and guidelines for it.
Executing stored procedure.
Altering and dropping stored procedure.
Creating paramterized stored procedure.
Returning values from stored procedure.
calling procedure from other procedure.
Understanding system procedures.
Creating Functions e.g. scalar and table valued functions.
Difference between functions and procedures.
Working with triggers and types of triggers .
Understanding transactions and its features like ACID.
===------------=======================
Topic ASP.NET WEBFORMS
What is web application ? What is Client and Server ? 
What is ASP.NET Framework and its history ? What is IIS ? 
Static and Dynamic Web Pages?
What is client side and server side scripting ?
Explain the Working of ASP.NET Application ?
Features of ASP.NET ?
Directories used in ASP.NET Web Applications?
Files Used in ASP.NET Web Applications ? 
Single-File and Code-behind Page Model ?
Page Events ? Web page code of aspx and aspx.cs ? AutoEventWireUp property of Page tag?
--Form tag and it's methods like get and post ? Form action property ?
What is posting ? What is Postback ? What is AutoPostBack ?
What is Page Life Cycle ? What is Life cycle Events ?
Implementing all HTML Controls ?
Implementing ASP Standard Controls ?
Exploring Default and Non Default Events ?
Making Web User Controls ?
What is IsPostBack ?
Styles implementation by using CSS?
Implementing Client Side Scripting by using Javascript?
Working with Master Pages and nested Master Pages ?
Using Navigation controls with site map ?
Redirecting user to any other web page with values ?
Using HyperLinks ?
Using Cross Page Postback?
using Response.Redirect and Server.Transfer Methods ?
Getting Control Information from the Source Page in the Same Application?
Managing state in web application ?
Client side state management ?
Server side state management ?
Working with Data controls ?
ADO.NET connectivity ?Global Connection ? SqlConnection , SqlCommand ,SqlDatareader etc for DML working
Using SQLDataSource?
Inserting , Updating and Deleting using SqlDataSource ?
Using Rich Controls like GridView , FormView and DetailsView.
Data Biding ?
Error Handling by using try catch , Application level handling , using web.config level error handling ?
Using WebParts Controls ?
Working with AJAX controls and toolkit ?
Security implementation in Web Application ?
Authentication and Authorization ?
Exploring WAT ?
Exploring Validation Controls ?
Exploring Login Controls ?
========---------================
Topic OOPS USING C#
About C# Programming Language like history and type and purpose and features? What is OOPS?
What is .NET Framework ? What are compilers ? Difference between Compiler and Interpreter ?
Classes in C# ? Class name Conventions ? Types of classes like partial , non static and static ?
Escape Sequences?
Basic Structure of C# Program like Main( ) Method usage ? 
What are namespaces ?
What is the difference between classes and namespaces?
What is the process of compiling of C# source code ?
What is MSIL?
What is JIT Compiler ?
What is Assembly ? Types of Assembly ?
What is Object ? 
What is the base class of all classes in the .NET Framework?
Explain the .NET Architecture ?
Latest .NET Framework and Latest C# languages ? How many .Net based languages available ? 
What are Variables? Variable Naming Conventions ? Declaring and Initializing Variables ?
What are Data Types ? Types of Data types ?
Difference between Value type and reference type data types?
Difference between dynamic and var type variables ?
Difference between variables and constants ?
Difference between constants and read only variables?
Console.ReadLine() and Console.WriteLine() Functionality ?
What is using Keyword ?
What are comments in C# ? Types of Comments ?
Instantiating Class and its process?
What are operators and Operands ? Types of Operators ? 
Explain Arithmetic , Arithmetic assignment , Unary , Comparison and Logical Operators ?
Explaining Conditional Constructs like if-else , nested if-else  and switch case ?
Explain Loops like While , do while , For loop and foreach loop ?
Goto , break , return and continue statements ?
What are the class members ?
What are access specifiers ? How may access specifiers are there ?
What are methods and convention for methods naming?
Explain the importance of Parameterized Methods ?
Explain call by value , call by reference and call by output ?
Explain Optional and Named Arguments ?
Explain Recursion ? And it's advantages?
Explain static attributes,static methods and static class?
Explaining Constructors ? Types of Constructors like static,private and instance ? Constructors with parameter ?
Explaining Destructors ? 
Explain the Garbage Collection and it's Process and working ?
Explain the Finalize() and Dispose() methods in Garbage Collection class?
Explain Properties in C#?
Explaining Structure ?  Difference between Structure and Class?
Explaining Enumerations and it's usage with examples?
Explaining Array and it's Implementation in one dimensional and two dimensional ? Copying array ?
Explain the Param Arrays and Jagged Array? Passing array as parameters ? Passing array by ref keyword ?
--Explaining Array Class with it's properties like Length,Rank etc and also methods like Sort, Clear and GetLength ?
Explain the Collections ?
Explain the Generic Class in C# ? Advantage of Generic Class?
Explain the types of Collections like generic and non generic ?
Explain the working of ArrayList , List,Stack,Queue and Dictionary collections with generic and non generic ?
Explain Inheritance and implementation ?
Explain abstract class and abstract methods ?
Explain the sealed classes?
Explain the interfaces ?
Explain base class initialization ?
What is Polymorphism?
Implementing function overloading and constructor overloading ?
Implementing function overriding ?
Reading and writing the text file by using File class?
Reading and Writing the text files by using FileStream class,StreamReader and StreamWriter.
Creating Directory and Creating files by using File.IO classess.
Fetching Directory and File details by using File.IO classes.
Exception handling by using try,catch and finally .
System Exceptions and Application Exceptions handling .
Creating application exception and throwing it.
Threads in C# like single thread and multi thread ?
Creating single thread and multi thread ?
Implementing Thread methods like Start(),Sleep(0,Abort() .
What is Thread Life Cycle ?
Synchronizing threads ?
Explaining Delegates ? Types of Delegates ?
Working with Events in C#?
What are attribute and reflections in C#?
Explain CLR and its process?
Explain Casting , boxing and unboxing in C# ?
Explain CLS and CTS?
What do you mean by interoperability feature in C#?
What are command Line arguments in C# to be used with Main() function ?
