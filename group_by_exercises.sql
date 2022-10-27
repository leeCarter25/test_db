USE employees;

SELECT DISTINCT title
FROM titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY last_name, first_name;

SELECT COUNT(last_name)
AS count, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name
NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(gender)
 AS gender_count, gender
FROM employees
WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya'
GROUP BY gender;




