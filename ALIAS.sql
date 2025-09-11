# ALIAS is temporary name given to the table or the column for more easy readability and convenience
# two types
# Column alias
# Table alias

create database alias;

use alias;

create table t1(

Employee_ID int primary key,
Name varchar(255),
Joining  DATE,
Department varchar(255),
salary Decimal(10,2)

);

Alter table t1
change column salary Salary Decimal(10,2);

insert into t1(Employee_ID,Name,Joining,Department,Salary) values
(101, 'Amit', '2025-09-08', 'Developer', 23000.00),
(102, 'Rekha', '2025-09-08', 'HR', 43000.00),
(103, 'Talu', '2025-09-08', 'Finance', 53000.50),
(104, 'Shekar', '2025-09-08', 'Analyst', 55000.00),
(105, 'Raj', '2025-09-08', 'Developer', 51000.00),
(106, 'Atharv', '2025-09-08', 'Developer', 80900.00);

select * from t1;

# Column alias

select Name as n, Salary as s from t1;

select Employee_ID,Name, Department as Dept from t1
where Employee_ID in (101,102,103,104);


# Table ALias
# Now see we have been working on Single table this whole time.
# What if there are multiple tables now. there we need to specify which tables we are gonna use


create table t2(

Dept_ID INT PRIMARY KEY, 
Employee_ID int,
Region varchar(255),
foreign key(Employee_ID) references t1(Employee_ID)  # here is refrential integrity i.e we told t2 that Employee_ID is this foreign key pickup from t1 table
); 



insert into t2 (Dept_ID,Employee_ID,Region) values
(11234,101,'Pune'),
(14334,102,'Mumbai'),
(15424,103,'Nepal'),
(13094,104,'Goa'),
(15434,105,'Rajasthan'),
(10984,106,'Gujarat');

select * from t2;


# Now to use our desired table we do like this

select t1.Employee_ID from t1;
select t2.Employee_ID , t2.Region from t2;

# Now comes the part of Table ALias

select emp.Employee_ID from t1 AS emp;


select emp.Employee_ID as emp_id   # as emp_id is just for renaming the Employee_ID col
from t1 as emp;



select concat(Employee_ID, " ", Department) as Position from t1;        # column alias

# Table alias are usually used with joins so next we will do joins


