-- Create a file named subqueries_exercises.sql

-- Find all the current employees with the same hire date as employee 101010 using a sub-query.

SELECT CONCAT(first_name, " ", last_name) as full_name, hire_date
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = '101010'
);

-- Find all the titles ever held by all current employees with the first name Aamod.

select titles.title, CONCAT(first_name, " ", last_name) 
FROM titles
JOIN employees ON employees.emp_no = titles.emp_no
where titles.emp_no in (
	select emp_no from employees
	where employees.first_name = 'Aamod')
order by title;

-- How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.

select count(distinct emp_no) 
from employees 
where emp_no not in (
	select emp_no 
	from dept_emp
	where to_date > curdate()
);

-- Find all the current department managers that are female. List their names in a comment in your code.

SELECT CONCAT(first_name, ' ', last_name) as female_managers
FROM employees 
WHERE employees.emp_no IN (
	SELECT emp_no
	FROM dept_manager 
	WHERE to_date > curdate() and employees.gender = 'F');

-- Find all the employees who currently have a higher salary than the companies overall, historical average salary.

SELECT CONCAT(first_name, ' ', last_name) as emp_name, salaries.salary
FROM salaries
JOIN employees ON employees.emp_no = salaries.emp_no
WHERE salaries.salary > (
	SELECT avg(salaries.salary)
	FROM salaries)
and salaries.to_Date > curdate();

-- How many current salaries are within 1 standard deviation of the current highest salary? (Hint: you can use a built in function to calculate the standard deviation.) What percentage of all salaries is this?

--BONUS

-- Find all the department names that currently have female managers.

-- Find the first and last name of the employee with the highest salary.

-- Find the department name that the employee with the highest salary works in.