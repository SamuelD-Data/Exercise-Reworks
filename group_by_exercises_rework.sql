-- Create a new file named group_by_exercises.sql

-- In your script, use DISTINCT to find the unique titles in the titles table. How many unique titles have there ever been? Answer that in a comment in your SQL file.

-- 7 unique titles
SELECT count(distinct title)
FROM titles; 

-- Write a query to to find a list of all unique last names of current or previous employees that start and end with 'E' using GROUP BY.

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name;

-- Write a query to to find all unique combinations of first and last names of previous employees whose last names start and end with 'E'.

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY first_name, last_name;

-- rite a query to find the unique last names with a 'q' but not 'qu'. Include those names in a comment in your sql code.

-- Add a COUNT() to your results (the query above) and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender with those names.

-- Using youre query that generates a username for all of the current and previous employees, generate a count employees for each unique username. 

-- Are there any duplicate usernames? 

-- BONUS: How many duplicate usernames are there?