-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', and order your results returned by first name. In your comments, answer: What was the first and last name in the first row of the results? What was the first and last name of the last person in the table?

-- Irena Reutenauer | Vidya Simmen
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', and order your results returned by first name and then last name. In your comments, answer: What was the first and last name in the first row of the results? What was the first and last name of the last person in the table?

-- Irena Acton | Vidya Zweizig
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', and order your results returned by last name and then first name. In your comments, answer: What was the first and last name in the first row of the results? What was the first and last name of the last person in the table?

-- Irena Acton | Maya Zyda
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

-- Write a query to to find all current employees whose last name starts and ends with 'E'. Sort the results by their employee number. Enter a comment with the number of employees returned, the first employee number and their first and last name, and the last employee number with their first and last name.

-- 7330 rows, Ramzi Erde | Dharmaraja Ertl
select first_name, last_name
from employees
where last_name like 'e%'
order by emp_no;

-- Write a query to find all current employees whose last name starts and ends with 'E'. Sort the results by their hire date, so that the newest employees are listed first. Enter a comment with the number of employees returned, the name of the newest employee, and the name of the oldest emmployee.

-- 899 rows | Teiji Eldridge | Sergi Erde
select first_name, last_name
from employees
where last_name like '%e' and last_name like 'e%'
order by hire_date desc;

-- Find all previous employees hired in the 90s and born on Christmas. Sort the results so that the oldest employee who was hired last is the first result. Enter a comment with the number of employees returned, the name of the oldest employee who was hired last, and the name of the youngest emmployee who was hired first.

select first_name, last_name, hire_date
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_Date like '%-12-25';

