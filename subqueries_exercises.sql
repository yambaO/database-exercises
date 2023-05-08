USE employees;

SELECT hire_date FROM employees WHERE emp_no = 101010;

SELECT * FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT title, COUNT(title) FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
GROUP BY title;

# Find all the current department managers that are female.

SELECT first_name, last_name FROM employees
WHERE gender = 'F'
  AND emp_no IN (
    SELECT emp_no FROM dept_manager
    WHERE to_date LIKE '9%'
);

# Find all the department names that currently have female managers.

SELECT dept_name FROM departments
WHERE dept_no IN (
    SELECT dept_no FROM dept_manager
    WHERE to_date LIKE '9%'
      AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
    )
);

SELECT first_name, last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary = (SELECT MAX(salary) FROM salaries)
);

