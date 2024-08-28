
-- * Question: How many people's zipcode have a 2 in it?.
select count(customerid) from customers where zip::text
ilike '%2%'

--  Question: How many people's zipcode start with 2 with the 3rd character being a 1.
select count(customerid) from customers where zip::text
like '2_1%'

-- * Question: Which states have phone numbers starting with 302?
-- * Replace null values with "No State" 
select COALESCE(address2,'no state') as Address2 from customers where phone::text like '302%'

--* Question: What unique titles do we have?
select count(DISTINCT title)from titles

-- * Question: Can I get a list of distinct life expectancy ages
-- * Make sure there are no nulls
-- */
select DISTINCT lifeexpectancy from country where lifeexpectancy IS NOT null 

-- * Question: Sort employees who's name starts with a "k" by hire_date
-- */
SELECT * FROM employees
WHERE first_name ILIKE 'k%'
ORDER BY hire_date;


-- * Question: Can I get a list of distinct life expectancy ages
-- * Make sure there are no nulls
-- */
select DISTINCT lifeexpectancy from country where lifeexpectancy IS NOT null 


-- order by // sorting data
select  * from city order by id,name desc
select name from city order by length(name) DESC

-- * Question: Sort employees who's name starts with a "k" by hire_date
-- */
SELECT * FROM employees
WHERE first_name ILIKE 'k%'
ORDER BY hire_date;
