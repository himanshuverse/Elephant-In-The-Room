-- PostgreSQL LIMIT is an optional clause of the SELECT statement that constrains the number of rows returned by the query.

--  syntax of the LIMIT clause:

-- SELECT
--   select_list
-- FROM
--   table_name
-- ORDER BY
--   sort_expression
-- LIMIT
--   row_count;


-- 1) Using PostgreSQL LIMIT to constrain the number of returned rows
-- The following statement uses the LIMIT clause to get the first five films sorted by film_id:

SELECT title,film_id 
FROM film 
ORDER BY film_id ASC
LIMIT 5;

-- 2) Using the LIMIT clause with the OFFSET clause example
-- To retrieve 4 films starting from the fourth one ordered by film_id,
--  you can use both LIMIT and OFFSET clauses as follows:

SELECT title,film_id 
FROM film 
ORDER BY film_id ASC
LIMIT 4
OFFSET 3 ;

--3) Using LIMIT to get top/bottom N rows
-- you often use the LIMIT clause to select rows with the highest or lowest values from a table.
-- The following example uses the LIMIT clause to retrieve the top 10 most expensive films by rental rate:

SELECT title,film_id , rental_rate
FROM film 
ORDER BY rental_rate DESC
LIMIT 10;

-- Summary
-- Use the PostgreSQL LIMIT and OFFSET clauses to retrieve a subset of rows returned by a query.