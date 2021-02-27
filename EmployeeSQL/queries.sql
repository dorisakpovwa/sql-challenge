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


SELECT salary
FROM salaries
WHERE salaries IN
(
  SELECT emp_id
  FROM employees
  WHERE employees IN ('emp_id', 'last_name', 'first_name', 'sex'));



SELECT,
(SELECT COUNT(inventory.film_id)
	FROM inventory
	WHERE film.film_id = inventory.film_id ) AS "Number of Copies"
FROM film;


-- Question 1
--List the names and ID numbers of cities that are in the following list: Qalyub, Qinhuangdao, Qomsheh, Quilmes.
SELECT city, city_id
FROM city
WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes');


-- Question 2
-- Display the districts in the above list of cities.
Hint: Use the address and city tables.
SELECT district
FROM address
WHERE city_id IN
(
  SELECT city_id
  FROM city
  WHERE city IN ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')
);


-- Bonus
--Using subqueries, find the first and last names of customers who reside in cities that begin with the letter Q.
Hint: You will need to use three tables and more than one subquery.
SELECT first_name, last_name
FROM customer cus
WHERE address_id IN
(
  SELECT address_id
  FROM address a
  WHERE city_id IN
  (
    SELECT city_id
    FROM city
    WHERE city LIKE 'Q%'
  )
);
