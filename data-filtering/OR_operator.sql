--PostgreSQL uses
-- true, 't', 'true', 'y', 'yes', '1' to represent true 
-- false, 'f', 'false', 'n', 'no', and '0' to represent false.

--The OR operator returns true only if any of the expressions is true.
-- It returns false if both expressions are false. Otherwise, it returns null.


expression1	                 expression2	               expression1 OR expression2
True	                          True	                          True
True	                          False	                          True
True	                          Null	                          True
False	                          False	                          False
False	                          Null	                          Null
Null	                          Null	                          Null


--The following example uses the OR operator in the WHERE clause 
-- to find the films that have a rental rate of 0.99 or 2.99:

SELECT title,rental_rate
FROM film
WHERE rental_rate = 0.99 OR  rental_rate =2.99;