USE   employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT * FROM employees WHERE
    (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
                          AND gender = 'M';

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12;

SELECT * FROM employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND hire_date LIKE '199%';

SELECT * FROM employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND hire_date LIKE '199%' ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(NOW(), hire_date), employees.* FROM employees WHERE DAY(birth_date) = 25 AND MONTH(birth_date) = 12 AND YEAR(hire_date) LIKE '199%' ORDER BY DATEDIFF(hire_date, NOW()) DESC;