-- Use the employees database.
 use employees;

-- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT dept_name, CONCAT(first_name, ' ', last_name) AS department_manager
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no 
WHERE dept_manager.to_date > curdate()
ORDER BY departments.dept_name;


-- Find the name of all departments currently managed by women.

SELECT dept_name, CONCAT(first_name, ' ', last_name) AS department_manager, employees.gender AS manager_gender
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > curdate() AND employees.gender = 'F';

-- Find the current salary of all current managers.

SELECT dept_name, CONCAT(first_name, ' ', last_name) AS department_manager, salaries.salary
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN salaries ON salaries.emp_no = dept_manager.emp_no 
WHERE salaries.to_date > curdate() AND dept_manager.to_date > curdate()
ORDER BY departments.dept_name;

-- Find the number of current employees in each department.

SELECT  dept_emp.dept_no, dept_name, count(departments.dept_no) AS emp_per_dept
FROM departments
JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_emp.emp_no
WHERE dept_emp.to_date > curdate()
GROUP BY dept_name
ORDER BY dept_emp.dept_no;

-- Which department has the highest average salary? Hint: Use current not historic information.

SELECT departments.dept_name, AVG(salaries.salary) AS highest_avg_salary
FROM departments
JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
JOIN salaries ON salaries.emp_no = dept_emp.emp_no 
WHERE salaries.to_date > curdate() AND dept_emp.to_date > curdate()
GROUP BY departments.dept_name
ORDER BY highest_avg_salary DESC
LIMIT 1;

-- Who is the highest paid employee in the Marketing department?

SELECT CONCAT(first_name, ' ', last_name) AS employee_name, salaries.salary AS highest_salary
FROM departments
JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_emp.emp_no 
JOIN salaries ON salaries.emp_no = dept_emp.emp_no 
WHERE salaries.to_date > curdate() AND dept_emp.to_date > curdate() AND departments.dept_name = 'Marketing'
ORDER BY highest_salary DESC
LIMIT 1;

-- Which current department manager has the highest salary?

SELECT CONCAT(first_name, ' ', last_name) AS department_manager, salaries.salary AS highest_salary, departments.dept_name
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN salaries ON salaries.emp_no = employees.emp_no 
WHERE salaries.to_date > curdate() AND dept_manager.to_date > curdate()
ORDER BY salaries.salary DESC
LIMIT 1;

-- Bonus Find the names of all current employees, their department name, and their current manager's name.

-- Bonus Who is the highest paid employee within each department.