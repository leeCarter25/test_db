SHOW databases;
USE employees;

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE first_name = 'Irena' OR  first_name = 'Vidya' OR first_name = 'Maya';

SELECT *
FROM employees
WHERE gender = 'M' and (first_name ='Irena' OR  first_name = 'Vidya' OR first_name = 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name = '%E';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';