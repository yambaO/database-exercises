USE employees;

SELECT DISTINCT title
FROM titles;

SELECT  last_name
FROM employees
WHERE last_name  LIKE 'e%' OR last_name LIKE '%e'
GROUP BY last_name;

SELECT last_name
FROM employees
WHERE last_name like '%q%'
  AND last_name  NOT like '%qu%'
GROUP BY last_name;

SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


SELECT COUNT(*) ,gender
FROM employees
WHERE  (first_name = 'Irena'
    OR  first_name ='Vidya'
    OR  first_name ='Maya')
GROUP BY gender;

show tables;

describe current_dept_emp;
describe departments;
describe dept_emp;
describe employees;
describe salaries;
describe titles;