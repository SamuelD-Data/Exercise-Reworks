-- Using the example from the lesson, re-create the employees_with_departments table.

CREATE TEMPORARY TABLE employees_with_departments AS
SELECT emp_no, first_name, last_name, dept_no, dept_name
FROM employees.employees
JOIN employees.dept_emp USING(emp_no)
JOIN employees.departments USING(dept_no);

--  Add a column named full_name to this table. It should be a VARCHAR whose length is the sum of the lengths of the first name and last name columns

ALTER TABLE employees_with_departments ADD full_name VARCHAR(64);

-- Update the table so that full name column contains the correct data

UPDATE employees_with_departments
SET full_name = CONCAT(first_name, ' ', last_name);

-- Remove the first_name and last_name columns from the table.

ALTER TABLE employees_with_departments DROP COLUMN first_name;

ALTER TABLE employees_with_departments DROP COLUMN last_name;

-- What is another way you could have ended up with this same table?

CREATE TEMPORARY TABLE employees_with_departments AS
SELECT *
FROM employees.employees_with_departments;

ALTER TABLE employees_with_departments ADD full_name VARCHAR(100);

UPDATE employees_with_departments
SET full_name = CONCAT(first_name, ' ', last_name);

ALTER TABLE employees_with_departments DROP COLUMN first_name, DROP COLUMN last_name;

-- Create a temporary table based on the payment table from the sakila database.

CREATE TEMPORARY TABLE payment AS
SELECT *
FROM sakila.payment;

-- Write the SQL necessary to transform the amount column such that it is stored as an integer representing the number of cents of the payment. For example, 1.99 should become 199.

-- Find out how the current average pay in each department compares to the overall, historical average pay. In order to make the comparison easier, you should use the Z-score for salaries. In terms of salary, what is the best department right now to work for? The worst?Create a file named temporary_tables.sql to do your work for this exercise.