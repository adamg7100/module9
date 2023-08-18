SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	salaries.salary,
	employees.sex
FROM employees
INNER JOIN salaries ON
	employees.emp_no = salaries.emp_no;


SELECT first_name,
	last_name,
	hire_date
FROM employees
WHERE date_part('year', hire_date) = 1986;


SELECT dept_manager.dept_no,
	dept_manager.emp_no,
	departments.dept_name,
	employees.first_name,
	employees.last_name
FROM dept_manager
INNER JOIN employees ON
	dept_manager.emp_no = employees.emp_no,
INNER JOIN departments ON
	departments.dept_no = dept_manager.dept_no;

SELECT departments.dept_no,
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM dept_emp
INNER JOIN employees ON
	employees.emp_no = dept_emp.dept_no
INNER JOIN departments ON
	departments.dept_no = dept_emp.dept_no;

SELECT first_name
    , last_name
    , sex
FROM employees
WHERE first_name = 'Hercules'
    AND last_name LIKE 'B%';


SELECT employees.emp_no,
	employees.first_name,
	employees.last_name
FROM employees
INNER JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
	departments.dept_no = dept_emp.emp_no
WHERE departments.dept_name IN ('Sales');


SELECT employees.emp_no,
	employees.first_name,
	employees.last_name
FROM employees
INNER JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
	departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');

SELECT last_name,
	count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name);
