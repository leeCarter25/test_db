USE employees;
#1
SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) as dept_manager
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE YEAR(dept_manager.to_date) = 9999
ORDER BY dept_name;

#2
SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
JOIN dept_manager  on employees.emp_no = dept_manager.emp_no
JOIN departments on dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date = '999-01-01' AND employees.gender = 'F'
ORDER BY dept_name;

#3
SELECT titles.title, COUNT(titles.title) AS Total
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01' AND dept_emp.to_date = '9999-01-01' AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

#4
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager on departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01'
ORDER BY dept_name;






