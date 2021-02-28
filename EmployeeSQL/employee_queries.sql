-- Create the subquery to list details from employees and salaries table
SELECT employees.emp_id,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
LEFT JOIN salaries ON
(employees.emp_id = salaries.emp_id)
ORDER BY employees.emp_id;

-- Employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List manager of each department and employee number
SELECT employees.emp_id,
    employees.last_name,
    employees.first_name,
    department.dept_id,
    department.dept_name
FROM employees
INNER JOIN mgr_dept ON
mgr_dept.emp_id = employees.emp_id
INNER JOIN department ON
department.dept_id = mgr_dept.dept_id
ORDER BY mgr_dept.emp_id;