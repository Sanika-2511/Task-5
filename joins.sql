create database join_practicse;

use join_practicse;

create table courses(
c_id int primary key auto_increment,
c_name varchar(225)
);


create table students(
s_id int primary key auto_increment,
s_name varchar(225),
s_email varchar(225),
course_id int,
foreign key (course_id) references courses(c_id) on update cascade on delete cascade
);


insert into courses(c_name) values
("Python Full Stack"),
("Java Full Stack"),
("Data Analysis"),
("Data Engineer");

insert into students(s_name,s_email,course_id) values
("Sanika","jadhavsanika874@gmail.com",4),
("Sonali","sonali@gmail.com",1),
("Snehal","Snehal@gmai.com",3),
("Tanishka","tanishka@gmail.com",2);

select * from courses;
select * from students;

#SQL Joins-->joins are used to join a table
#Types of join
#1.Inner Join
select s.s_name , c.c_name from courses c
inner join students s
on c.c_id=s.course_id;


#2.left join
select s.s_id , c.c_name from courses c
left join students s 
on c.c_id=s.course_id;

#3.Right join
select s.s_id , c.c_name from courses c
right join students s 
on c.c_id=s.course_id;

#4.full join -->its not supported in mysql
-- select s.s_id , c.c_name from courses c
-- full join students s 
-- on c.c_id=s.course_id;

