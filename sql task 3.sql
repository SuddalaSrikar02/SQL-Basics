# SQL Clauses Task

# Step 1: Create Database
CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;


#  Step 3: Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    gender ENUM('Male','Female') NOT NULL,
    dob DATE NOT NULL,
    join_date DATE NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL CHECK (salary >= 0),
    bonus DECIMAL(5,2) NOT NULL CHECK (bonus >= 0),
    experience_years INT NOT NULL CHECK (experience_years >= 0),
    email VARCHAR(100) NOT NULL UNIQUE
);

# Step 4: Insert Sample Data

alter table employees modify bonus int;

INSERT INTO employees (full_name, gender, dob, join_date, department, salary, bonus, experience_years, email) VALUES
('Deepraj Patil', 'Male', '1990-05-20', '2015-06-01', 'IT', 75000, 5000, 10, 'deepraj@company.com'),
('Vivek Sharma', 'Male', '1988-11-15', '2010-01-15', 'Finance', 95000, 8000, 15, 'vivek@company.com'),
('Shruti Deshmukh', 'Female', '1992-07-10', '2017-08-21', 'HR', 65000, 3000, 7, 'shruti@company.com'),
('Ankit Mehta', 'Male', '1995-03-05', '2019-04-01', 'IT', 55000, 2000, 5, 'ankit@company.com'),
('Neha Kulkarni', 'Female', '1993-12-12', '2016-11-01', 'Marketing', 70000, 4000, 8, 'neha@company.com'),
('Rohan Joshi', 'Male', '1985-09-30', '2008-07-15', 'Finance', 120000, 10000, 17, 'rohan@company.com'),
('Pooja Rao', 'Female', '1994-01-23', '2018-02-15', 'HR', 60000, 2500, 6, 'pooja@company.com'),
('Karan Singh', 'Male', '1991-06-18', '2014-09-10', 'IT', 80000, 6000, 11, 'karan@company.com'),
('Priya Verma', 'Female', '1990-10-25', '2013-03-12', 'Marketing', 72000, 4500, 12, 'priya@company.com'),
('Amit Gupta', 'Male', '1987-02-14', '2009-05-01', 'Finance', 105000, 9000, 14, 'amit@company.com');

# PRACTICE QUESTIONS

# 1. SELECT & FROM

### 1. Show all the details of every employee.

select * from employees;

### 2. Show only the name, department, and salary of each employee.

select full_name,department, salary from employees;

### 3. Show only the email ID and joining date of each employee.

select employee_id,join_date from employees;

# 2. WHERE Clause

### 1. Find all employees who work in the IT department.

select employee_id from employees
where department = "IT";

### 2. Find all employees whose salary is greater than 80,000.

select full_name from employees
where salary > 80000;

### 3. Find all employees who have 10 or more years of experience.

select full_name from employees
where experience_years >= 10;

select * from employees;

### 4. Find all employees who were born after 1st January 1990.

select full_name from employees
where dob > "1990-01-01";

###  5. Find all female employees who work in the HR department.

select * from employees;

select * from employees
where gender = "Female" and department = "HR";

### 6. Find employees whose salary is between 60,000 and 90,000.

select employee_id from employees
where salary between 60000 and 90000;

### 7. Find employees who work in either IT or HR department.

select full_name from employees
where department = "IT" or "HR";


### 8. Find employees who do not work in the Finance department.

select full_name from employees
where department != "Finance";

### 9. Find employees whose name starts with the letter 'P'.

select * from employees
where full_name like "p%";

### 10. Find employees whose name ends with the letter 'a'.

select * from employees
where full_name like "%a";

### 11. Find employees whose name contains the letters 'ra'.

select * from employees
where full_name like "%ra%";

### 12. Find employees who joined the company after the year 2015.

select full_name from employees
where year(join_date) > "2015";

select * from employees;

### 13. Find employees who were born in 1990 or later.

select full_name from employees
where year(dob) > "1990";

### 14. select full_name from employees

select full_name from employees;

### 15. Find all male employees whose salary is greater than 70,000.

select full_name from employees
where gender = "Male" and salary > 70000;




