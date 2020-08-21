-- Create a file named where_exercises.sql. Make sure to use the employees database.

use employees;

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. Enter a comment with the number of records returned.

select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned. Does it match number of rows from Q2?

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. Enter a comment with the number of records returned.

-- Find all current or previous employees whose last name starts with 'E'. Enter a comment with the number of employees whose last name starts with E.

-- Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E. How many employees have a last name that ends with E, but does not start with E?