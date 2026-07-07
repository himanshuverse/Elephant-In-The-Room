-- The IN operator allows you to check whether a value matches any value in a list of values.
-- value IN (value1,value2,...)

-- 1) Using the PostgreSQL IN operator with a list of numbers
-- The following example uses the IN operator to retrieve information about the film with id 1, 2, and 3:

SELECT title,film_id
FROM film 
WHERE
film_id in (1,2,3);


--2) Using the PostgreSQL IN operator with a list of strings
-- The following example uses the IN operator to find the actors 
-- who have the last name in the list 'Allen', 'Chase', and 'Davis':

SELECT  first_name,last_name
FROM actor 
WHERE
last_name in ('Allen', 'Chase',  'Davis');


-- 3) Using the PostgreSQL IN operator with a list of dates
-- The following statement uses the IN operator to find payments whose payment dates 
-- are in a list of dates: 2007-02-15 and 2007-02-16:

SELECT
  payment_id,
  amount,
  payment_date
FROM
  payment
WHERE
  payment_date::date IN ('2007-02-15', '2007-02-16');


  --PostgreSQL NOT IN operator example
-- The following example uses the NOT IN operator to retrieve films whose id is not 1, 2, or 3:

SELECT
  film_id,
  title
FROM
  film
WHERE
  film_id NOT IN (1, 2, 3)
ORDER BY
  film_id;