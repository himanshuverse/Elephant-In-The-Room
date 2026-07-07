
--syntax
OFFSET row_to_skip { ROW | ROWS }
FETCH { FIRST | NEXT } [ row_count ] { ROW | ROWS } ONLY    
-- by default row_to_skip is 0 and row_count is 1

--PostgreSQL FETCH examples
-- 1)The following query uses the FETCH clause to select the first film sorted by titles in ascending order:
SELECT
    film_id,
    title
FROM
    film
ORDER BY
    title
FETCH FIRST ROW ONLY;

--The following query uses the FETCH clause to select the first five films sorted by titles:
SELECT
    film_id,
    title
FROM
    film
ORDER BY
    title
FETCH FIRST 5 ROW ONLY;

--The following statement returns the next five films after the first five films sorted by titles:
SELECT
    film_id,
    title
FROM
    film
ORDER BY
    title
OFFSET 5 ROWS
FETCH FIRST 5 ROW ONLY;


-- Use the PostgreSQL FETCH clause to skip a certain number of rows and retrieve a specific number of rows from a query.