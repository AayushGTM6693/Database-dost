
-- left join - want to know every salary raise and also know which is promotion select  sal.emp_no, sal.salary , sal.from_date , COALESCE(tit.title, 'no title change') as title from salaries as sal 
left join titles as tit on sal.emp_no = tit.emp_no and (
sal.from_date = tit.from_date or (sal.from_date + interval '2 days')
 = tit.from_date )  order by sal.emp_no

less common joins
 cross joins -- cartesian product
full join -- returns both that match or dont mat
-- some qns 
/*
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
-- */
-- 
select * from orders as odr inner join customers as cus on cus.state in ('OH','NY','OR') AND  cus.customerid = odr.customerid
order by orderid


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
 SELECT  prod.prod_id,inv.quan_in_stock, inv.sales from products as prod
inner join inventory as inv on inv.prod_id = prod.prod_id
order by prod.prod_id

in join , we can use USING(emp_no) -- instead of on a.emp_no = b.emp_no
easily match the primary to foreign key relationship


inner join -- subset
-- showing title change and showing salary initally
select a.emp_no, b.salary, b.from_date, c.title FROM employees as a 
inner join salaries as b on b.emp_no = a.emp_no
inner join titles as c on c.emp_no = a.emp_no and (
 b.from_date = c.from_date  or
(b.from_date + interval '2 days')
 = c.from_date)
order by a.emp_no asc , b.from_date ASC


--self join 
SELECT a.id, a.name as "employee", b.name as "supervisor name"
FROM employee as a, employee as b
WHERE a.supervisorId = b.id;
primary and foreign key in same table

outer join - left join - dont have a match from table A
-- select *
-- from <tableA> as a 
-- left join <tableB>
-- on a.id = b.id -- intersection , returns null if dont find any 

-- how many employee are not manager
select count(emp.emp_no) /*dep.emp_no*/ from employees as emp 
left join dept_manager as dep  on  dep.emp_no = emp.emp_no
where dep.emp_no is /* not - gives who are manager */ null -- filter out that are  null i.e null lai rakhni

select a.emp_no, b.salary, b.from_date, c.title FROM employees as a 
inner join salaries as b on b.emp_no = a.emp_no
left join titles as c on c.emp_no = a.emp_no and (
 b.from_date = c.from_date  or
(b.from_date + interval '2 days')
 = c.from_date)
 order by a.emp_no
