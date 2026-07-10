
--LEFT JOIN keeps every row from the left table, even when no matching row exists in the right table.

SELECT columns
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;

-- 1) Basic PostgreSQL LEFT JOIN examples
-- The following statement uses the LEFT JOIN clause to join film table with the inventory table
SELECT f.title , f.description , f.last_update
FROM film f
LEFT JOIN inventory i 
USING(film_id);


-- 2) Using PostgreSQL LEFT JOIN with WHERE clause
-- The following uses the LEFT JOIN clause to join the inventory and film tables. It includes a WHERE clause that identifies the films that are not present in the inventory:

SELECT
  f.film_id,
  f.title,
  i.inventory_id
FROM
  film f
  LEFT JOIN inventory i USING (film_id)
WHERE
  i.inventory_id IS NULL
ORDER BY
  f.title;