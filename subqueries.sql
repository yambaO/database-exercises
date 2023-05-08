USE employees;

SELECT emp_no FROM dept_manager;

SELECT birth_date FROM employees
WHERE emp_no IN (110022, 110039, 110085, 110114, 110183, 110228, 110303, 110344, 110386, 110420, 110511, 110567, 110725, 110765, 110800, 110854, 111035, 111133, 111400, 111534, 111692, 111784, 111877, 111939);

SELECT CONCAT(first_name, ' ', last_name), birth_date FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager);

USE codeup_test_db;

