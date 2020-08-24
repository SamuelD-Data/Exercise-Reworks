-- Write a query to to find all current employees whose last name starts and ends with 'E'. Use concat() to combine their first and last name together as a single column named full_name.

SELECT CONCAT(first_name, " ", last_name) AS full_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT CONCAT(first_name, " ", last_name) AS full_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

-- Convert the names produced in your last query to all uppercase.

SELECT CONCAT (UPPER (first_name), " ", UPPER (last_name)) AS full_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT CONCAT (UPPER (first_name), " ", UPPER (last_name)) AS full_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

-- Find all previous employees hired in the 90s and born on Christmas. Use datediff() function to find how many days they have been working at the company (Hint: You will also need to use NOW() or CURDATE()),

SELECT first_name, last_name, hire_date, birth_date, DATEDIFF(NOW(), hire_date) AS Days_Worked
FROM employees
WHERE birth_date LIKE '%12-25'
	AND (
		hire_date BETWEEN '1990-01-01' and '1999-12-31')
ORDER BY birth_date, hire_date DESC;

-- Find the smallest and largest current salary from the salaries table.

SELECT MIN(salary) as Smallest_Salary, MAX(salary) as Largest_Salary
FROM salaries;

-- Use your knowledge of built in SQL functions to generate a username for all of the current and previous employees. 
-- A username should be all lowercase, and consist of the first character of the employees first name, the first 4 characters of the employees last name, an underscore, 
-- the month the employee was born, and the last two digits of the year that they were born. 

SELECT first_name, last_name, birth_date,
	CONCAT
		(LOWER(SUBSTR(first_name, 1, 1)), 
		LOWER(SUBSTR(last_name, 1, 4)) , 
		"_", 
		SUBSTR(birth_date, 6, 2), 
		SUBSTR(birth_date, 3, 2)) as USERNAME		
FROM employees