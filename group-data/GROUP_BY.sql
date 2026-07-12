--The GROUP BY clause divides the rows returned from the SELECT statement into groups.

SELECT
   column_1,
   column_2,
   ...,
   aggregate_function(column_3)
FROM
   table_name
GROUP BY
   column_1,
   column_2,
   ...;


   --  FROM -> WHERE -> GROUP BY -> HAVING -> SELECT ->  DISTINCT -> ORDER BY -> LIMIT clauses.

--    1) Using PostgreSQL GROUP BY without an aggregate function example
-- The following example uses the GROUP BY clause to retrieve the customer_id from the payment table:

SELECT
  customer_id
FROM
  payment
GROUP BY
  customer_id
ORDER BY
  customer_id;  
  -- remove duplicate id 

--   2) Using PostgreSQL GROUP BY with SUM() function example
--   The following query uses the GROUP BY clause to retrieve the total payment paid by each customer:

SELECT
  customer_id,
  SUM (amount)
FROM
  payment
GROUP BY
  customer_id
ORDER BY
  customer_id;

--   3) Using PostgreSQL GROUP BY clause with the JOIN clause
-- The following statement uses the GROUP BY clause to retrieve the total payment for each customer and display the customer name and amount:
-- In this example, we join the payment table with the customer table using an inner join to get the customer names and group customers by their names.
SELECT
  first_name || ' ' || last_name full_name,
  SUM (amount) amount
FROM
  payment
  INNER JOIN customer USING (customer_id)
GROUP BY
  full_name
ORDER BY
  amount DESC;

--   4) Using PostgreSQL GROUP BY with COUNT() function example
-- The following example uses the GROUP BY clause with the COUNT() function to count the number of payments processed by each staff:

SELECT
	staff_id,
	COUNT (payment_id)
FROM
	payment
GROUP BY
	staff_id;

--     5) Using PostgreSQL GROUP BY with multiple columns
-- The following example uses a GROUP BY clause to group rows by values in two columns:

SELECT
  customer_id,
  staff_id,
  SUM(amount)
FROM
  payment
GROUP BY
  staff_id,
  customer_id
ORDER BY
  customer_id;



--   6) Using PostgreSQL GROUP BY clause with a date column
-- The following example uses the GROUP BY clause to group the payments by payment date:

SELECT
  payment_date::date payment_date,
  SUM(amount) sum
FROM
  payment
GROUP BY
  payment_date::date
ORDER BY
  payment_date DESC;


--   Summary
-- Use the PostgreSQL GROUP BY clause to divide rows into groups and apply an aggregate function to each group.