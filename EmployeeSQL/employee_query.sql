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

--List each employees and departments
SELECT employees.emp_id,
    employees.last_name,
    employees.first_name,
    department.dept_name
FROM employees
INNER JOIN emp_dept ON
emp_dept.emp_id = employees.emp_id
INNER JOIN department ON
department.dept_id = emp_dept.dept_id
ORDER BY emp_dept.emp_id;

--List names, sex of employees whose first name is Hercules and last name begin with B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY first_name;

--List sales department employees
SELECT employees.emp_id,
    employees.last_name,
    employees.first_name,
    department.dept_name
FROM employees
INNER JOIN emp_dept ON
emp_dept.emp_id = employees.emp_id
INNER JOIN department ON
department.dept_id = emp_dept.dept_id
WHERE department.dept_name LIKE 'Sales'

--List employees in sales & development departments
SELECT employees.emp_id,
    employees.last_name,
    employees.first_name,
    department.dept_name
FROM employees
INNER JOIN emp_dept ON
emp_dept.emp_id = employees.emp_id
INNER JOIN department ON
department.dept_id = emp_dept.dept_id
WHERE 'Sales' AND 'Development' IN department 

--Determine frequency of employees that share last name in descending order
SELECT COUNT(DISTINCT last_name) AS COUNT_EMPLOYEE FROM employees
ORDER BY COUNT_EMPLOYEE DESC

