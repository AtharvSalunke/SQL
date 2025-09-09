create database clause;

use clause;

create table t1(

ID int primary key,
name varchar(255),
marks INT,
admission Date


);

alter table t1
add column age int,
add column grade varchar(255) default 'NA';


insert into t1(ID,name,marks,admission,age,grade) values
(101,'Atharv Salunke',90,'2025-09-08',22,'A+'),
(102,'Kuldeep',70,'2025-09-08',24,'B'),
(103,'Shankar',85,'2025-09-08',23,'A'),
(104,'Prakash',60,'2025-09-08',21,'C'),
(105,'Dileep',91,'2025-09-08',29,'A+');


select * from t1;

/*
Clauses : there are number of clauses in sql which are
select,where,from,order by,having,group by,join, limit,distinct
*/

# where

select * from t1
where marks > 60;

select * from t1
where grade = 'B';

# THere are opeartors in sql too those are
/*
Arithemtic   - +,/,-,*,%               % this gives the remainder    eg 4%2  = 0  
logical = AND, OR, NOT, IN, BETWEEN, LIKE, NOT, IS NULL
comparison = =,<,>,<=,>=,!=

*/

select * from t1
where marks+10 >= 100;

insert into t1(ID,name,marks,admission,age,grade) values
(106,'Atharv Salunke',87,'2025-09-08',19,'A');


select * from t1
where name = 'Atharv Salunke'
and 
grade = 'A+';

select * from t1 
where name = 'Atharv Salunke'
or 
grade = 'A';

select marks,name,age from t1
where marks between 60 AND 80;
 
 
 select * from t1
 where marks in (70,90);   # will only give 70 and 90 data. but make sure to add a  list to define a IN 
 
 
 select * from t1 
 where marks NOT IN(90);


# limit clause  

select marks from t1
where marks  > 60 
limit 3; 

# order by
# order by is only used on row data to sort them out in ascending ASC or descending desc

select * from t1
where marks > 60
order by marks ASC
limit 3;

select * from t1
where age >= 18
order by age ASC;
 
 /* Group by*/
 
 select name, count(name) from t1
 where name =  'Atharv Salunke'
 group by name;
 
 select marks , MAX(marks) AS highest from t1
 where marks > 90
 group by marks;
 

 
 /* Having - to filter groups after grouping
   mostly used with group by and aggregate function
 */
 
 
 select name, count(name) as multiple from t1
 group by name
 having count(name);
 
 # both are same but group by make all the row datas group
 
 select name, count(name) AS multiple from t1
where name = 'Atharv Salunke' ;
 
 /*Distinct
   Does not give duplicate data
 
 */
 
 select Distinct name from t1;