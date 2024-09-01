
-- LIKE(partial match - sensitive) AND ILIKE(case insensitive)
-- SELECT * from customers where firstname ilike 'vkuu%'


-- SET TIME ZONE 'UTC'; (ISO-8601 )
-- SHOW TIMEZONE;
-- EG YYYY-MM-DDTHH:MM:SS + TIMEZONE
-- select now()::date or SELECT CURRENT_DATE
-- select TO_CHAR(CURRENT_DATE,'dd/mm/yyyy') // get specific format
-- select date '1800/01/01' => formats string to date with formatting // cast to date
-- select AGE(date  'yyyy-mm-dd') // calc age
-- select EXTRACT (DAY FROM date '2004/08/20') AS DAY // => day = 20 , same with year and months

-- intervals
-- SELECT  from *** where purchaseDate <= now() - interval '30 days'
-- select extract (year from interval '5 years 20 months') //> 6



