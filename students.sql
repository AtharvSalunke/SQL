create database temp;

use temp;

create table student (
id int primary key,
name varchar(255)
);

insert into student (id,name) 
values 
(1,'Atharv'),
(2,'Raj'),
(3,'Parjeet');


select * from student;