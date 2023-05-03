USE employees;

SHOW TABLES;

SELECT DISTINCT first_name FROM employees WHERE first_name LIKE '%sus%';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT emp_no, first_name, last_name FROM employees
WHERE emp_no < 20000
    AND last_name IN ('Herber', 'Baek')
   OR first_name = 'Shridhar';

SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

# order by

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 20 OFFSET 30;