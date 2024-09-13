select dept_no, count(emp_no) from dept_emp group by dept_no 
/* put in the bucket
 -- split the data into groups so we can apply funcs against the group
 -- we use group by with aggregate funcs
 -- ORDER from->where->groupby->having->select->order
 */
 
 /* In your query, you want to count how many departments an employee (emp_no) has worked in. To do that, you need to group the rows by emp_no because you want one result per employee, summarizing how many departments they belong to.
*/
-- 
-- *  How many people were hired on any given hire date?
-- *  Database: Employees
-- *  Table: Employees
select hire_date,count(emp_no) from employees group by hire_date 


-- *   Show me all the employees, hired after 1991 and count the amount of positions they've had
-- *  Database: Employees
 select e.emp_no,count(t.title) as "total employee after 1991" from employees as e
 join titles as t on  e.emp_no = t.emp_no and EXTRACT (YEAR FROM e.hire_date) > 1991
group by e.emp_no
order by e.emp_no

-- better
SELECT e.emp_no, COUNT(t.title) AS "amount of titles"
FROM employees AS e
JOIN titles AS t USING(emp_no)
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
ORDER BY e.emp_no;


-- *  Show me all the employees that work in the department development and the from and to date.
-- *  Database: Employees
-- 
select  e.emp_no, d.from_date, d.to_date from 
employees as e 
join dept_emp as d  using(emp_no)
where d.dept_no = 'd005'
 GROUP BY e.emp_no, d.from_date, d.to_date
 ORDER BY e.emp_no, d.to_date;

 -- combine the results of multiple groupings
 -- union and union all => union all does not remove duplicate records
 /*
 grouping sets (
 (),
 (prod_id)      => we can write this instead of union
 )

 you can achieve results similar to a UNION using GROUPING SETS. 
 The key idea is that GROUPING SETS allows you to perform multiple 
 grouping operations in a single query, which can give the same effect
  as running separate queries and combining their results with UNION. 
Here's an example to illustrate this:


 */
 -- Using UNION
SELECT region, NULL as product, SUM(sales_amount)
FROM sales
GROUP BY region
UNION ALL
SELECT NULL as region, product, SUM(sales_amount)
FROM sales
GROUP BY product;

 -- or 
 -- Using GROUPING SETS
SELECT region, product, SUM(sales_amount)
FROM sales
GROUP BY GROUPING SETS (
    (region),      -- Grouping by region
    (product)      -- Grouping by product
);

/*
ROLLUP creates multiple levels of aggregation, 
starting from the most specific grouping (all columns),
 then less specific groupings (removing one column at a time),
  and finally an overall total (with all columns removed).
*/

--eg
select region , product , sum(total_sales)
from sales
group by ROLLUP(region,product)


-- chatgpt link => https://chatgpt.com/share/66e3ca55-480c-8006-8844-82f98ab79a32