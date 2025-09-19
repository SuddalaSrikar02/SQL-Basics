# SQL Clauses Task

# Step 1: Create Database
CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;

# Step 2: Drop Table if Exists

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


#  Step 4: Insert Sample Data

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

## 1. SELECT & FROM

### 1. Show all the details of every employee.

select * from employees;

### 2. Show only the name, department, and salary of each employee.

select full_name,department,salary from employees;

### 3. Show only the email ID and joining date of each employee.

select employee_id, join_date from employees;

## 2. WHERE Clause

### 1. Find all employees who work in the IT department.

select full_name from employees
where department = "IT";

### 2. Find all employees whose salary is greater than 80,000.

select employee_id from employees
where salary > 80000;

### 3. Find all employees who have 10 or more years of experience.

select employee_id from employees
where experience_years >= 10;

### 4. Find all employees who were born after 1st January 1990.

select employee_id from employees
where dob > "1990-01-01";

### 5. Find all female employees who work in the HR department.

select gender,department from employees
where gender = "Female" and department = "HR";

### 6. Find employees whose salary is between 60,000 and 90,000.

select employee_id from employees
where salary between 60000 and 90000;

### 7. Find employees who work in either IT or HR department.

select employee_id from employees
where department = "IT" OR "HR";

### 8. Find employees who do not work in the Finance department.

select employee_id from employees
where department != "Finance";

### 9. Find employees whose name starts with the letter 'P'.

select full_name from employees
where full_name like "p%";

### 10. Find employees whose name ends with the letter 'a'.

select full_name from employees
where full_name like "%a";

### 11. Find employees whose name contains the letters 'ra'

select full_name from employees
where full_name like "%ra%";

### 12. Find employees who joined the company after the year 2015.

select full_name from employees
where year(join_date) > 2015;

### 13. Find employees who were born in 1990 or later.

select full_name from employees
where year(dob) >= 1990;

### 14. Find employees whose bonus is less than 5,000.

select full_name from employees
where bonus < 5000;

### 15. Find all male employees whose salary is greater than 70,000.

select full_name from employees
where gender = "Male" and salary > 70000;

## 3. GROUP BY Clause

### 1. Show the total number of employees in each department.

select department,count(employee_id) from employees
group by department;

### 2. Show the average salary in each department.

select department, avg(salary) from employees
group by department;

### 3. Show the total bonus given in each department.

select department, sum(bonus) from employees
group by department;

### 4. Show the maximum salary in each department.

select department, max(salary) from employees
group by department;

### 5. Show the number of male and female employees in each department.

select department,gender, count(*) from employees
group by department,gender
ORDER BY department, gender;


### 6. Show the average years of experience in each department.

select * from employees;

select department, avg(experience_years) from employees
group by department;

### 7. Show the total salary of employees with more than 10 years of experience, grouped by department.

select department, sum(salary) from employees
where experience_years > 10
group by department;

## 4. HAVING Clause

### 1. Show departments where the average salary is greater than 75,000.

select department,avg(salary) from employees
group by department
having avg(salary) > 75000;


### 2. Show departments that have more than 2 employees.

select department, count(*) as total_employees from employees
group by department
having total_employees>2
order by total_employees desc; 


select * from employees;

### 3. Show departments where the maximum bonus is greater than 7,000.

select department, max(bonus) as max_bonus from employees
group by department
having max_bonus > 7000;

### 4. Show departments where the total experience years of employees is more than 20.

select department, sum(experience_years) from employees
group by department
having sum(experience_years)>20;

### 5. Show departments that have more than 1 female employee

select department,  count(*) as female_employee from employees
where gender = "Female"
group by department
having female_employee > 1;




