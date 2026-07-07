-- Here’s the basic syntax of the LIKE operator:
    --  value LIKE pattern
-- The LIKE operator returns true if the value matches the pattern. To negate the LIKE operator,
-- you use the NOT operator as follows:
 --    value NOT LIKE pattern
-- The NOT LIKE operator returns true when the value does not match the pattern.

-- If the pattern does not contain any wildcard character, the LIKE operator behaves like the equal (=) operator.


--WILDCARDS
-- Percent sign (%) matches any sequence of zero or more characters.
-- Underscore sign (_)  matches any single character.

--1) Basic LIKE operator examples
SELECT 'apple' LIKE 'apple' AS result ;  -- t 
SELECT 'Apple' LIKE 'A%' AS result;  --t

--2) Using the LIKE operator with table data
--The following example uses the LIKE operator to find customers whose first names contain the string er :
SELECT first_name , last_name
FROM customer
WHERE first_name LIKE '%er%'
ORDER BY first_name;

-- 3) Using the LIKE operator with a pattern that contains both wildcards
-- The following example uses the LIKE operator with a pattern that contains both the percent (%) 
--   and underscore (_) wildcards:

SELECT
  first_name,
  last_name
FROM
  customer
WHERE
  first_name LIKE '_her%'
ORDER BY
  first_name;

--   4) PostgreSQL NOT LIKE examples
-- The following query uses the NOT LIKE operator to find customers whose first names do not begin with Jen:

SELECT
  first_name,
  last_name
FROM
  customer
WHERE
  first_name NOT LIKE 'Jen%'
ORDER BY
  first_name;



  --PostgreSQL extensions of the LIKE operator
--     Operator	                Equivalent
--        ~~	                    LIKE
--        ~~*	                   ILIKE
--        !~~	                  NOT LIKE
--        !~~*	                 NOT ILIKE

-- PostgreSQL ILIKE operator, which is similar to the LIKE operator, but allows for case-insensitive matching.
SELECT
  first_name,
  last_name
FROM
  customer
WHERE
  first_name ILIKE 'BAR%';   -- return all BAR or BAr or boR    exact case insensitive pattern  but LIKE only give BAR one exact 



--  PostgreSQL LIKE operator with ESCAPE option
-- Sometimes, the data, that you want to match, contains the wildcard characters % and _. For example:
-- The rents are now 10% higher than last month
-- The new film will have _ in the title

-- To instruct the LIKE operator to treat the wildcard characters % and _ as regular literal characters, you can use the ESCAPE option in the LIKE operator:

-- string LIKE pattern ESCAPE escape_character;




-- Summary
-- Use the LIKE operator to match data by patterns.
-- Use the NOT LIKE operator to negate the LIKE operator.
-- Use the % wildcard to match zero or more characters.
-- Use the _ wildcard to match a single character.
-- Use the ESCAPE option to specify the escape character.
-- Use the ILIKE operator to match data case-insensitively.