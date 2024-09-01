-- 1. COUNT(): Counts the number of rows
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- 2. SUM(): Adds up the values in a numeric column
SELECT SUM(Salary) AS TotalSalary FROM Employees;

-- 3. AVG(): Calculates the average value of a numeric column
SELECT AVG(Salary) AS AverageSalary FROM Employees;

-- 4. MIN(): Returns the smallest value in a column
SELECT MIN(Salary) AS LowestSalary FROM Employees;

-- 5. MAX(): Returns the largest value in a column
SELECT MAX(Salary) AS HighestSalary FROM Employees;

-- 6. COUNT(DISTINCT): Counts the number of distinct values in a column
SELECT COUNT(DISTINCT Department) AS UniqueDepartments FROM Employees;

-- 7. GROUP BY: Used with aggregate functions to group results
SELECT Department, SUM(Salary) AS DepartmentSalary
FROM Employees
GROUP BY Department;

-- 8. HAVING: Filters groups based on a condition
SELECT Department, SUM(Salary) AS DepartmentSalary
FROM Employees
GROUP BY Department
HAVING SUM(Salary) > 100000;
