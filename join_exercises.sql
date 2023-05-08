USE employees;

# the name of the current manager for that department.

SELECT  d.dept_name AS 'Department name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE YEAR(de.to_date) = 9999;

# Find the name of all departments currently managed by women.

SELECT  d.dept_name AS 'Department name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE YEAR(de.to_date) = 9999   AND e.gender like 'f';

# Find the current titles of employees currently working in the Customer Service department.

SELECT title, COUNT(title) AS Total FROM titles t
         JOIN dept_emp de on t.emp_no = de.emp_no
         JOIN departments d on d.dept_no = de.dept_no
WHERE dept_name = 'Customer Service'
  AND t.to_date LIKE '9%'
  AND de.to_date LIKE '9%'
GROUP BY title;


#find the current salary of all current managers
SELECT  d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments d
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e on e.emp_no = dm.emp_no
         JOIN salaries s on e.emp_no = s.emp_no
AND dm.to_date > NOW() AND   s.to_date > NOW()
ORDER BY dept_name;



# Find the names of all current employees, their department name, and their current manager's name .
#
# +----------------------+------------------+-----------------+
# | Employee             | Department       | Manager         |
# +----------------------+------------------+-----------------+
# | Huan Lortz           | Customer Service | Yuchang Weedman |
# | Basil Tramer         | Customer Service | Yuchang Weedman |
# | Breannda Billingsley | Customer Service | Yuchang Weedman |
# | Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
# | Yuichiro Swick       | Customer Service | Yuchang Weedman |
# ... 240,124 Rows in total

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee', departments.dept_name AS 'Department', CONCAT(Managers_names.first_name, ' ', Managers_names.last_name) AS 'Manager'
FROM employees
         JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
         JOIN dept_manager ON dept_manager.dept_no = dept_emp.dept_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no
         JOIN employees AS Managers_names ON Managers_names.emp_no = dept_manager.emp_no
WHERE dept_emp.to_date > NOW() AND dept_manager.to_date > NOW();