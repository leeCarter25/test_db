SHOW databases;
USE employees;

SELECT concat(first_name,' ',last_name) as full_name FROM employees WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT * FROM employees WHERE day(birth_date) = 25 AND month(birth_date) = 12;

SELECT * FROM employees WHERE day(birth_date) = 25 AND month(birth_date) = 12 AND YEAR(hire_date)
BETWEEN 1990 AND 1999 ORDER BY hire_date DESC;

SELECT concat(first_name,' ',last_name) as full_name, datediff(now(), hire_date) as Working_time
FROM employees WHERE day(birth_date) = 25 AND month(birth_date) = 12 AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY emp_no DESC;


