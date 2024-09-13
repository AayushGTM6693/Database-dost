/*
Window functions in SQL are functions that perform calculations
 across a set of table rows related to the current row. Unlike 
 aggregate functions (SUM, AVG, etc.) that return a single result
  for a group of rows, window functions preserve the individual rows 
  and allow you to compute cumulative, ranking, and other complex metrics
   over a "window" of rows.
*/

-- EXAMPLE
SELECT salesperson, region, sales_amount,
       ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales_amount DESC) AS row_num
FROM sales;
 -- key note 
 /* 
 lets say, employee 1002 has two rows because they work in both d002 and d001.
  This effectively duplicates their salary, which causes the average to shift 
  from the original 4500 (calculated without the JOIN) to 4250, because we are
   now averaging the salary across more rows.
 */


 -- grouping sets and partition by 

 /*
 PARTITION BY in window functions is used for calculations 
 within partitions but keeps all rows intact. It’s more about
  calculating values without altering the structure of the data.
GROUPING SETS is used for collapsing data into aggregate summaries
 across multiple group combinations (like subtotals and totals),
  reducing the number of rows in the result.
 */

 select  * , avg(salary) over(
PARTITION by d.dept_name
)
from salaries
join dept_emp as de using(emp_no)
join departments as d using(dept_no)
order by emp_no


