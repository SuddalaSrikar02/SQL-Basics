# SQL Task Constraints and Commands

# Part 1: DDL (Data Definition Language)

# Q1. Create a new database named College.

create database College;

# Q2. Use the created database.

use College;

# 3. Create a table departments with the following fields:

CREATE TABLE departments (
  dept_id INT PRIMARY KEY AUTO_INCREMENT,
  department_name VARCHAR(100) NOT NULL UNIQUE
);

# Q4. Create a table students with the following fields:

CREATE TABLE students (
id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(100) NOT NULL,
gender VARCHAR(10) CHECK (gender IN ('Male', 'Female')),
dob DATE NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
phone_number VARCHAR(15) NOT NULL UNIQUE,
percentage DECIMAL(5,2) NOT NULL CHECK (percentage >= 0 AND percentage <= 100),
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(dept_id)
);

# Q5. Alter the students table to add a new column address (VARCHAR(200)).

alter table students add address varchar(200);

# Q6. Alter the students table to add a new column admission_year (YEAR).

alter table students add admission_year year;

# Q7. Modify the column phone_number to store 20 characters.

alter table students modify phone_number varchar(20);

# Q8. Modify the column full_name to increase its size to 150 characters.

alter table students modify full_name varchar(150);

# Q9. Rename the column percentage to score.


alter table students change column percentage score decimal(5,2) not null check (score >= 0 and score <= 100);

# Q10. Rename the column email to student_email.

alter table students rename column email to student_email;

# Q11. Drop the column dob from students table.

alter table students drop column dob;

# Q12. Drop the column address from students table.

alter table students drop column address;

# Q13. Add a new column scholarship_amount (DECIMAL(10,2)).

alter table students add scholarship_amount DECIMAL(10,2) not null default;

# Q14. Change the datatype of score to INT.

alter table students modify percentage int;

# Q15. Drop the entire departments table.

drop table departments;

# Part 2: DML (Data Manipulation Language)

# Q16. Insert data into departments table (Explicit).

insert into departments(dept_id,department_name)
values(123,"CSE");

# Q17. Insert data into students table (Explicit).
select * from students;
insert into students(id,full_name,gender,student_email,phone_number,percentage,department_id)
values(123,"SUDDALA SRIKAR","Male","srikar@gmail.com","9876543210",90,123);

# Q18. Insert multiple records into students at once.

insert into students(id,full_name,gender,student_email,phone_number,percentage,department_id)
values(1,"GUDU SATHIS","Male","gudu@gmail.com","1234567890","75",123);
select * from students;

insert into students(id,full_name,gender,student_email,phone_number,percentage,department_id)
values(2,"SRI HARATHI","Female","sri@gmail.com","3214598760","65",123);
      select * from students;
# Q19. Update the email of a student named "Amit Kumar".

update students set full_name = "AMIT KUMAR" where id = 1;

# 20. Update the scholarship amount of all students to 5000.

# Q21. Delete a student whose id = 2.

delete from students
where id = 2;

# Q22. Delete all students whose score < 40.

delete from students
where percentage < 40;

# 23. Truncate the students table (remove all rows but keep structure)

truncate table students;

select * from students;

# Part 3: DQL (Data Query Language)

# Q24. Display all students.

select * from students order by id;

# Q25. Display only full_name and student_email of students.

select full_name, student_email from students;

# 26. Show students whose score is greater than 70.

select * from students where percentage > 70;

# 27. Show students where gender = 'Female'

select * from students where gender = "Female";

# Q28. Display students in ascending order of score.

select full_name, percentage from students order by percentage asc;

# 29. Display students born before '2000-01-01'.

# 30. Display distinct genders available in the students table.

select distinct gender from students;
      