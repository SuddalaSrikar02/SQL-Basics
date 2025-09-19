# SQL JOINs Task

create database clge;
use clge;

create table studentsg
(student_id int auto_increment primary key,
full_name varchar(50),
course_id bigint);

create table course
(course_id bigint primary key,
course_name varchar(50));

insert into studentsg
values(1,"Aditi",101),
      (2,"Rahul",102),
      (3,"Sneha",null);
      
insert into course
values(101,"Data Science"),
      (102,"Data Analysis"),
      (103,"SQL basics");

# 1: INNER JOIN

# Write a query to display the list of students along with the course they are enrolled in

select  s.course_id, s.full_name, c.course_name
from studentsg as s
join course as c
on s.course_id = c.course_id;

# Only show students who are actually enrolled in a course.

select * from studentsg as s
inner join course as c
on s.course_id = c.course_id;

# Output should contain: student_id, full_name, course_name.

select student_id, full_name, course_name from studentsg as s
join course as c
on s.course_id = c.course_id;

# 2: LEFT JOIN

# Write a query to display all students, and their course names if they are enrolled.

select full_name,course_name from studentsg as s
left join course as c
on s.course_id = c.course_id;

# Students without a course should still appear.

select s.student_id,s.full_name,c.course_id
from studentsg as s
left join course as c
on s.course_id = c.course_id;

# Output should contain: student_id, full_name, course_name.

select s.student_id,s.full_name,c.course_name
from studentsg as s
left join course as c
on s.course_id = c.course_id;

select * from studentsg;

select * from course;

# 3: RIGHT JOIN

# Write a query to display all courses, along with the students enrolled in them.

select course_name,full_name from studentsg as s
right join course as c
on s.course_id = c.course_id;

# Courses without any students should still appear.

select c.course_name,s.student_id,c.course_id from studentsg as s
right join course as c
on s.course_id = c.course_id;

# Output should contain: student_id, full_name, course_name.

select c.course_name,s.student_id,s.full_name from studentsg as s
right join course as c
on s.course_id = c.course_id;

