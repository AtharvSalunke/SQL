create database CRUD;

use CRUD;

create table c(

ID int primary key,
name varchar(255),
marks INT,
admission Date,
age INT,
grade varchar(255) default 'NA'


);


/* CRUD    - wrt data
CREATE  - INSERT
READ - SELECT
UPDATE - UPDATE
DELETE - DELETE
*/

# CREATE
insert into c(ID,name,marks,admission,age,grade) values
(101,'Atharv Salunke',90,'2025-09-08',22,'A+'),
(102,'Kuldeep',70,'2025-09-08',24,'B'),
(103,'Shankar',85,'2025-09-08',23,'A'),
(104,'Prakash',60,'2025-09-08',21,'C'),
(105,'Dileep',91,'2025-09-08',29,'A+');

# READ

select * from c;

select ID,name,grade from c;

select name,ID from c
where name =  'Atharv Salunke';

# UPDATE

UPDATE c
SET name = 'Talwinder'
WHERE ID  = 105; 

select * from c;

# ALTER  -  now remember alter is used to add new columns , modify type of column,rename the column name, Drop a column
# methods used in alter are ADD,DROP,RENAME,CHANGE,MODIFY
# so its like we work with structure of the table

Alter table c
add city varchar(255);             # adds a new column  

Update c                          # now we can add data in each row on column city using ID
SET city = CASE                   # this is like if else
				when ID = 101 then 'Pune'
				when ID = 102 then 'Mumbai'
                when ID = 103 then 'Delhi'
                when ID = 104 then 'Pune'
                when ID = 105 then 'KOlkata'
                when ID = 106 then 'Punjab'
			END
where ID in (101,102,103,104,105,106);

update c
set city = 'Kolkata'
where ID = 105;

select * from c;


Alter table c;


# DELETE -  now here there are multiple meanings
# DELETE FROM  -  deletes only specific rows
# TRUNCATE TABLE - removes whole data from the table but s
# DROP TABLE - 

Delete from c
where ID = 106;

select * from c;


truncate table c;

# DROP c;   this will totally delete the table or database






