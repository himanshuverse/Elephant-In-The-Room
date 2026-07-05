-- 1) Using PostgreSQL SELECT statement to query data from one column example

SELECT first_name FROM customer;


--2) Using PostgreSQL SELECT statement to query data from multiple columns example

SELECT first_name , last_name , email FROM customer;


--3) Using PostgreSQL SELECT statement to query data from all columns of a table example

SELECT * FROM customer;


--4) Using PostgreSQL SELECT statement with expressions example
--use the SELECT statement to return the full names and emails of all customers from the customer table:

SELECT first_name || ' ' || last_name AS full_name , email FROM customer;


--5) Using PostgreSQL SELECT statement without a FROM clause

SELECT NOW(); -- omit time and date now


--Summary
-- Use the SELECT ... FROM statement to retrieve data from a table.
-- PostgreSQL evaluates the FROM clause before the SELECT clause.
-- Use a column alias to assign a temporary name to a column or an expression in a query.
-- In PostgreSQL, the FROM clause is optional.
