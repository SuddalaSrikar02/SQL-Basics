# Part 1: DDL (Data Definition Language)

# •	Q1. Create a new database named EduTech_DB.

create database EduTech_DB;

# •	Q2. Use the created database.

use EduTech_DB;

# •	Q3. Create a table Courses with the following fields

create table EduTech_DB
(course_id int,
course_name varchar(100),
duration_months int,
fees DECIMAL(10,2),
instructor VARCHAR(50));
desc EduTech_DB;


# •	Q4. Alter the table to add a new column mode_of_training (VARCHAR(30))

alter table EduTech_DB add mode_of_training varchar(30);

# •	Q5. Modify the duration_months column to store it as VARCHAR(20).

desc EduTech_DB;

alter table EduTech_DB modify duration_months varchar(20);
desc EduTech_DB;

# •	Q6. Rename the column fees to course_fee.

alter table EduTech_DB rename column fees to course_fee;
desc EduTech_DB;

# •	Q7. Drop the column mode_of_training

alter table EduTech_DB drop column mode_of_training;
desc EduTech_DB;

# •	Q8. Drop the entire table Courses.
drop table EduTech_DB;

# Part 2: DML (Data Manipulation Language)

# •	Q9. Insert data into Courses table (Explicit)
create table courses(id int,course char(3),age int);

insert into courses(id,course,age)
values(123,"DS",21);

select * from courses;

# •	Q10. Insert data (Implicit – without column names).

insert into courses
values(23,"DA",22);

select * from courses;

# •	Q11. Insert multiple records at once.

insert into courses
values(345,"FS",45),(321,"WD",25),(231,"PD",32);

select * from courses;

# Q12. Update the course fee of Machine Learning to 47000

update courses 
set age = 50
WHERE id = 123;

select * from courses;

# •	Q13. Delete a course where course_id = 104.
Delete from courses
where id = 123;

# •	Q14. Truncate the table (remove all records but keep structure).

truncate table courses;
select * from courses;

# Part 3: DQL (Data Query Language)

# •	Q15. Display all courses.

select * from courses;

# •	Q16. Display course_name and instructor only.

drop table courses;

select course, id
from courses;

# •	Q17. Display courses where course_fee is greater than 40000.
select * from courses
where age >23;

# Part 4: Operators
# Arithmetic Operators
# •	Q18. Increase all course fees by 10%.
update courses
set course_fee = course_fee * 1.10;

# Comparison Operators

# •	Q19. Find courses with duration greater than 4 months.

select * from courses
where age > 25;

# Logical Operators

# •	Q20. Find courses with fee more than 40000 AND duration more than 5 months.

select * from courses 
where age > 25 and course = "FS";