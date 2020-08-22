-- Make sure to use the employees database.

use employees;

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. Enter a comment with the number of records returned.

-- 709 rows
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned. Does it match number of rows from Q2?

-- 709 rows, amonut matches Q2
select first_name, last_name
from employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. Enter a comment with the number of records returned.

-- 441 rows
select first_name, last_name
from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'm';

-- Find all current or previous employees whose last name starts with 'E'. Enter a comment with the number of employees whose last name starts with E.

-- 7330 rows
select first_name, last_name
from employees
where last_name like 'e%';

-- Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E. 

-- 30723 rows
select first_name, last_name
from employees
where last_name like 'e%' or last_name like '%e'

-- How many employees have a last name that ends with E, but does not start with E?

-- 23393 row
select COUNT(last_name)
from employees
where last_name not like 'e%' and last_name like '%e'
