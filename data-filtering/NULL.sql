-- In the database world, NULL means missing information or not applicable. NULL is not a value, therefore, you cannot compare it with other values like numbers or strings.

-- The comparison of NULL with a value will always result in NULL. Additionally, NULL is not equal to NULL so the following expression returns NULL:

-- SELECT null = null AS result;
-- Output:

-- result
-- --------
--  null
-- (1 row)

-- value IS NULL
-- The IS NULL operator returns true if the value is NULL or false otherwise.

-- To negate the IS NULL operator, you use the IS NOT NULL operator:

-- value IS NOT NULL
-- The IS NOT NULL operator returns true if the value is not NULL or false otherwise.

-- 1) Basic IS NULL operator example
-- The following example uses the IS NULL operator to find the addresses from
--  the address table that the address2 column contains NULL:

SELECT address,address2
FROM address
WHERE address2 IS NULL;

-- 2) Using the IS NOT NULL operator example
-- The following example uses the IS NOT NULL operator to retrieve the address that has the address2 not NULL:


SELECT address,address2
FROM address
WHERE address2 IS NOT NULL;


-- Summary
-- In databases, NULL means missing information or not applicable.
-- The IS NULL operator returns true if a value is NULL or false otherwise.
-- The IS NOT NULL operator returns true if a value is not NULL or false otherwise.