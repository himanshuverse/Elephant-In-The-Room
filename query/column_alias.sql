--A column alias allows you to assign a column or an expression in the select list of a  
--  SELECT statement a temporary name.
-- The column alias exists temporarily during the execution of the query.
-- SELECT column_name AS alias_name FROM table_name;           AS is optional keyword

--1) Assigning a column alias to a column example

SELECT first_name AS user FROM customer;


--2) Assigning a column alias to an expression example

SELECT first_name || ' ' ||customer_id AS username FROM customer ;


--3) Column aliases that contain spaces

SELECT address_id || ' ' ||store_id  AS "store address" FROM customer ;


-- Summary
-- Assign a column or an expression a column alias using the syntax column_name AS alias_name or expression AS alias_name. The AS keyword is optional.
-- Use double quotes (“) to surround column aliases that contain spaces.
