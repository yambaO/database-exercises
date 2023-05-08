USE employees;

# Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
SELECT *
FROM employees
WHERE first_name  IN ( 'Irena', 'Vidya', 'Maya')
ORDER BY first_name ;


# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig
SELECT *
FROM employees
WHERE first_name  IN ( 'Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT *
FROM employees
WHERE first_name  IN ( 'Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number.
# Make sure the employee numbers are in the correct order.
SELECT *
FROM employees
WHERE last_name  LIKE  'E%'
ORDER BY emp_no ASC;
#
# Now reverse the sort order for both queries and compare results
SELECT *
FROM employees
WHERE last_name  LIKE  'E%'
ORDER BY emp_no DESC;

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR  first_name ='Vidya'
   OR  first_name ='Maya';

SELECT *
FROM employees
WHERE gender = 'M' AND (first_name = 'Irena'
    OR  first_name ='Vidya'
    OR  first_name ='Maya');

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;


SELECT *
FROM employees
WHERE last_name  LIKE 'E%' OR '%E'
ORDER BY emp_no DESC;


SELECT *
FROM employees
WHERE last_name  LIKE 'e%' AND last_name LIKE '%e'
ORDER BY emp_no DESC;

