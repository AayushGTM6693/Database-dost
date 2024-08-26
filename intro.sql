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

-- "" => column and table , space , First letter capital
-- '' => string

-- WHERE (..AND..AND..) OR (..AND..AND..)

-- precedence => Not- right => and - left => or- left

-- "IS" => filter null , not null, true or false

-- sum(coalesce(age,200)) // null ko thau ma 200 aauxa

/* 
in sql if hamilai two ota check garna xa bhane we use OR
instead of AND e.g
age = 2 or age = 4 but we cant say age = 2 and age = 4 coz
the age cant be 2 and 4 at the same time , of a person

..... WHERE (age is null) or (age is not null)
*/