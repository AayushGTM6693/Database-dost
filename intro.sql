-- 1. Select everything from the "USERS" table
SELECT * 
FROM USERS;

-- 2. Select the "NAME" column from the "USERS" table where the "ROLE" is 'MANAGER'
SELECT NAME 
FROM USERS
WHERE ROLE = 'MANAGER';

-- 3. Select the "emp_no" column from the "employees" table and rename it as "employee #bro"
SELECT emp_no AS "employee #bro"
FROM employees;

-- 4. Concatenate the "emp_no" column with the text ' is a ' and the "title" column, 
-- and rename the result as "Employee Title"
SELECT CONCAT(emp_no, ' is a ', title) AS "Employee Title"
FROM titles;

