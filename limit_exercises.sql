USE employees;

SELECT  distinct last_name
FROM employees
ORDER BY Last_name DESC
LIMIT 10;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;


SELECT distinct emp_no, salary
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET  5;