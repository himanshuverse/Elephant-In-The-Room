--INNER JOIN returns only rows that have a match in both tables.
-- SELECT
--   select_list
-- FROM
--   table1
-- INNER JOIN table2
--   ON table1.column_name = table2.column_name;
-- In this syntax:

-- First, specify the columns from both tables in the select list of the SELECT clause.
-- Second, specify the main table (table1) from which you want to select data in the FROM clause.
-- Third, specify the second table (table2) you want to join using the INNER JOIN keyword.
-- Finally, define a condition for the join. 
-- This condition indicates which column (column_name) in each table should have matching values for the join.


--                                                                  EXAMPLES
-- 1) Using PostgreSQL INNER JOIN to join two tables
-- Let’s take a look at the customerand payment tables in the sample database.
-- In this schema, whenever a customer makes a payment, a new row is inserted into the payment table.
--  While each customer may have zero or many payments, each payment belongs to one and only one customer.
--  The customer_id column serves as the link establishing the relationship between the two tables.
--  The following statement uses the INNER JOIN clause to select data from both tables:

-- 1) Using PostgreSQL INNER JOIN to join two tables

SELECT
  c.customer_id,
  c.first_name,
  c.last_name,
  p.amount,
  p.payment_date
FROM
  customer c
  INNER JOIN payment p ON p.customer_id = c.customer_id    -- can use using(customer_id)
ORDER BY
  p.payment_date;



-- How the INNER JOIN works :
-- For each row in the table1, the inner join compares the value in the column_name with 
-- the value in the corresponding column of every row in the table2.

-- When these values are equal, the inner join creates a new row that includes
--  all columns from both tables and adds this row to the result set.

-- Conversely, if these values are not equal, the inner join disregards the current pair and
--  proceeds to the next row, repeating the matching process.


-- 2) Using PostgreSQL INNER JOIN to join three tables

SELECT
    f.title,
    a.first_name,
    a.last_name
FROM film AS f

INNER JOIN film_actor AS fa
USING(film_id)

INNER JOIN actor AS a
USING(actor_id);