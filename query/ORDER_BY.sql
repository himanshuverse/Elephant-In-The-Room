-- When we query data from a table, the SELECT statement returns rows in an unspecified order.
--  To sort the rows of the result set we use the ORDER BY clause in the SELECT statement.
-- SELECT select_list FROM table_name ORDER BY sort_expression1 [ASC | DESC], sort_expression2 [ASC | DESC],...;
--postgresql evaluates  FROM -> SELECT -> ORDER BY

--1) Using PostgreSQL ORDER BY clause to sort rows by one column
SELECT first_name , last_name FROM customer ORDER BY first_name ASC;    --ASC is by default , can remove it


--2) Using PostgreSQL ORDER BY clause to sort rows by one column in descending order
SELECT first_name , last_name FROM customer ORDER BY first_name DESC;    


--3) Using PostgreSQL ORDER BY clause to sort rows by multiple columns
SELECT first_name , last_name FROM customer ORDER BY first_name DESC , last_name ASC ;    


--4) Using PostgreSQL ORDER BY clause to sort rows by expressions
SELECT first_name , LENGTH(first_name) AS len FROM customer ORDER BY len ;    -- by default in ascending


-- PostgreSQL ORDER BY clause and NULL
ORDER BY sort_expression [ASC | DESC] [NULLS FIRST | NULLS LAST];
SELECT first_name , last_name FROM customer ORDER BY first_name DESC  NULLS LAST ;    



--Summary
-- Use the ORDER BY clause in the SELECT statement to sort the rows in the query set.
-- Use the ASC option to sort rows in ascending order and DESC option to sort rows in descending order.
-- The ORDER BY clause uses the ASC option by default.
-- Use NULLS FIRST and NULLS LAST options to explicitly specify the order of NULL with other non-null values.
