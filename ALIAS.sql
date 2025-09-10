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
where Employee_ID in (101,102,103,104)


# Table ALias


