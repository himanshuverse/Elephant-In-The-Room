SELECT select_list FROM table_name WHERE condition ORDER BY  sort_expression;
--postgresql evaluates  FROM ->WHERE-> SELECT -> ORDER BY
--If you use column aliases in the SELECT clause, you cannot use them in the WHERE clause.

Operator	Description
=	          Equal
>	          Greater than
<	          Less than
>=	          Greater than or equal
<=	          Less than or equal
<> or !=	       Not equal
AND	          Logical operator AND
OR	          Logical operator OR
IN	          Return true if a value matches any value in a list
BETWEEN	       Return true if a value is between a range of values
LIKE	       Return true if a value matches a pattern
IS NULL	       Return true if a value is NULL
NOT	          Negate the result of other operators


--1)  Using WHERE clause with the equal (=) operator example
SELECT
  last_name,
  first_name
FROM
  customer
WHERE
  first_name = 'Jamie';

--   2) Using the WHERE clause with the AND operator example
-- The following example uses a WHERE clause with the AND logical operator 
-- to find customers whose first name and last names are Jamie and Rice:  

 SELECT  last_name , first_name FROM customer 
 WHERE first_name='Jamie' AND last_name ='Rice'; 

  
--3) Using the WHERE clause with the OR operator example
-- The following example uses a WHERE clause with an OR operator to find the customers
--  whose last name is Rodriguez or first name is Adam:

SELECT  last_name , first_name FROM customer 
 WHERE first_name='Adam' OR last_name ='Rodriguez'; 


-- 4) Using the WHERE clause with the IN operator example
-- If you want to find a value in a list of values, you can use the IN operator.

-- The following example uses the WHERE clause with the IN operator to find the customers 
-- with first names in the list Ann, Anne, and Annie:
SELECT * 
FROM customer
WHERE first_name IN ('Ann', 'Anne', 'Annie');


-- 5) Using the WHERE clause with the LIKE operator example
-- To find a string that matches a specified pattern, you use the LIKE operator.

-- The following example uses the LIKE operator in the WHERE clause to 
-- find customers whose first names start with the word Ann:

SELECT *
FROM customer
WHERE first_name LIKE 'Ann%';


-- 6) Using the WHERE clause with the BETWEEN operator example
-- The following example finds customers whose first names start with 
-- the letter A and contains 3 to 5 characters by using the BETWEEN operator.
SELECT
  first_name,
  LENGTH(first_name) name_length
FROM
  customer
WHERE
  first_name LIKE 'A%'
  AND LENGTH(first_name) BETWEEN 3
  AND 5
ORDER BY
  name_length;


--   7) Using the WHERE clause with the not equal operator (<>) example
-- This example finds customers whose first names start with Bra and last names are not Motley:
SELECT
  first_name,
  last_name
FROM
  customer
WHERE
  first_name LIKE 'Bra%'
  AND last_name <> 'Motley';