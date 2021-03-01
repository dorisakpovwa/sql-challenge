--List details of each employee; names, sex and salary
--Create the subquery to list details from employees and salaries table
--join both tables on employee_id and order by same
SELECT employees.emp_id,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
LEFT JOIN salaries ON
(employees.emp_id = salaries.emp_id)
ORDER BY employees.emp_id;

-- List Employees hired in 1986
-- create query from employee table and ensure same date format
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List manager of each department and employee number
--create query from 3 tables and join on common ID's
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
--create query from 3 tables and join on common ID's
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

--List sex & employees whose first name is Hercules and last name begin with B
-- create query from employee table and use condition statement
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY first_name;

--List sales department employees and their departments
--create query from 3 tables and join on common ID's
--use condition statement
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
--create query from 3 tables and join on common ID's
--use condition statement
SELECT employees.emp_id,
    employees.last_name,
    employees.first_name,
    department.dept_name
FROM employees
INNER JOIN emp_dept ON
emp_dept.emp_id = employees.emp_id
INNER JOIN department ON
department.dept_id = emp_dept.dept_id
WHERE department.dept_name IN ('Sales', 'Development')

--Determine frequency of employees that share last name in descending order
--create query from employee table, group and order by last name
SELECT last_name, COUNT(last_name) AS "same_lastname"
FROM employees
GROUP BY last_name
ORDER BY same_lastname DESC;





