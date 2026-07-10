
--RIGHT JOIN keeps every row from the RIGHT table, even when there is no matching row in the LEFT table.
-- SELECT columns
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.common_column = table2.common_column;

-- 1) Basic PostgreSQL RIGHT JOIN examples
-- The following example uses the RIGHT JOIN clause to retrieve all rows from the film table that may or may not 
-- have corresponding rows in the inventory table:

SELECT  f.title , f.film_id
FROM inventory i
RIGHT JOIN film f 
ON f.film_id=i.film_id;


-- 2) PostgreSQL RIGHT JOIN with a WHERE clause
-- The following query uses a RIGHT JOIN clause with a WHERE clause to retrieve the films that have no inventory:

SELECT
  f.film_id,
  f.title,
  i.inventory_id
FROM
  inventory i
RIGHT JOIN film f USING(film_id)
WHERE i.inventory_id IS NULL
ORDER BY
  f.title;

