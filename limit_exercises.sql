USE employees;
SELECT employees.employees.last_name FROM employees
WHERE last_name LIKE 'Z%' LIMIT 10;

SELECT *
FROM employees.salaries
WHERE emp_no ORDER BY salary DESC
LIMIT 4 OFFSET 46;


