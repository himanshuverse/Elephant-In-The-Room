-- The AND operator returns true only if both expressions are true.
-- It returns false if one of the expressions is false. Otherwise, it returns null.

-- 1) Basic PostgreSQL AND operator examples
-- The following example uses the AND operator to combine two true values, which returns true:

SELECT true AND true AS result;  -- output is true

SELECT true AND false AS result;  --false

SELECT true AND null AS result;  --null

SELECT false AND false AS result; --false

SELECT false AND null AS result; --null


--2) Using the AND operator in the WHERE clause
--The following example uses the AND operator in the WHERE clause to 
-- find the films that have a length greater than 180 and a rental rate less than 1:

SELECT title , length ,rental_rate
FROM film
WHERE length >180 AND rental_rate < 1;