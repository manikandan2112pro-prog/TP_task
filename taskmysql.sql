create database employee_db;

use employee_db;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    city VARCHAR(50)
);
INSERT INTO employee (emp_id, emp_name, gender, department, salary, hire_date, city)
VALUES
(101,'John','Male','IT',65000,'2021-01-15','Chennai'),
(102,'Sarah','Female','HR',45000,'2020-03-10','Bangalore'),
(103,'David','Male','Finance',70000,'2019-07-20','Mumbai'),
(104,'Priya','Female','IT',80000,'2022-02-18','Chennai'),
(105,'Ahmed','Male','Sales',55000,'2021-09-25','Hyderabad'),
(106,'Meena','Female','HR',50000,'2023-01-05','Delhi'),
(107,'Raj','Male','IT',90000,'2018-11-12','Bangalore'),
(108,'Anita','Female','Finance',75000,'2020-08-30','Mumbai'),
(109,'Kumar','Male','Sales',60000,'2022-04-15','Chennai'),
(110,'Fatima','Female','IT',85000,'2019-06-22','Hyderabad');

-- task 1
select * from employee;
-- task 2
select emp_name, salary from employee;
-- task 3
select * from employee where department = 'IT';
-- task 4
select * from employee where salary > 60000;
-- task 5
select * from employee where city = 'Chennai';
-- task 6
select * from employee where hire_date > '2021-12-31';
-- task 7
SELECT * FROM employee ORDER BY salary;
-- task 8
select * from employee where salary=(select max(salary) from employee);
-- task 9
SELECT AVG(salary)  average_salary
FROM employee;
-- task 10
SELECT department, COUNT(*)  employee_count
FROM employee
GROUP BY department;
-- task 11
SELECT department
FROM employee
GROUP BY department
HAVING COUNT(*) > 2;
-- task 12
SELECT DISTINCT city;
-- task 13
SELECT *
FROM employee
WHERE emp_name LIKE 'A%';
-- task 14
select * FROM employee
WHERE salary BETWEEN 50000 AND 80000;
-- task 15
select * FROM employee
ORDER BY salary DESC
LIMIT 3;






