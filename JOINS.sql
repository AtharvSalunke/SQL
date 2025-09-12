create database joins;

use joins;

create table t1 (
id int primary key,
first_name varchar(255),
last_name varchar(255),
birth_year Date
);

create table t2(
 book_id int primary key,
 title varchar(255),
 id int,
 publication_year int,
 price Decimal(6,2),
 foreign key(id) references t1(id)
);

insert into t1 (id,first_name,last_name,birth_year) values
(101,'Atharv', 'Salunke','2025-08-09'),
(102,'Dilip', 'kumar','2025-08-04'),
(103,'Dinesh', 'Desai','2025-08-05'),
(104,'Navjot', 'Sidhu','2025-08-07'),
(105,'Sunny', 'Karlko','2025-08-09'),
(106,'Jiva', 'Desai','2025-08-09');

INSERT INTO t2 (book_id, title, id, publication_year, price) VALUES
(201, 'Mastering SQL', 101, 2023, 499.99),
(202, 'Learning Joins', 101, 2024, 699.50),
(203, 'Advanced MySQL', 102, 2022, 599.00),
(204, 'Database Design', 103, 2020, 899.75),
(205, 'Normalization Guide', 103, 2021, 450.25),
(206, 'Indexing Secrets', 105, 2023, 300.00);


select * from t1;
select * from t2;


# INNER JOIN - join s2 tables and returns that data which are same

select t1.id,t1.first_name,t2.title,t2.price from t1
inner join t2
on t1.id = t2.id;         # 2 columns are same  in both table
 
# now lets use alias

select a.id,a.first_name,a.birth_year, b.title,b.price from t1 as a
inner join t2 as b
on a.id = b.id;


SELECT 
    t1.id,
    t1.first_name,
    COUNT(t2.book_id) AS no_of_books
FROM t1
LEFT JOIN t2 
    ON t1.id = t2.id
GROUP BY t1.id, t1.first_name;

# LEFT JOIN 
# returns row from left table and aslo those which are matching from right table

select * from t1
left join t2
on t1.id = t2.id;    # all left side table are retrieved and matching which are on right side


# right join
# returns all the rows from the right side and also those rows which are matching in tbe left side


select * from t1 
right join t2
on t1.id = t2.id;   # shows all the righ side table data along with some matching ones in the left

#Full join
# this join joins both the tables its like combination of left and right join. it will also show the null values if not in any of the table
# mysql does not support full outer join we therefore create a logic which can show full join

select * from t1
left join t2
on t1.id = t2.id

union

select * from t1
right join t2
on t1.id = t2.id;

# cross join
# returns the cartesian product of 2 tables
# one major point cross join never uses On method


select * from t1
cross join t2;
