--The SELECT DISTINCT removes duplicate rows from a result set.
-- The SELECT DISTINCT clause retains one row for each group of duplicates and can be applied to two or more columns
-- SELECT DISTINCT column1 , column_2 FROM  table_name;
--PostgreSQL also offers the DISTINCT ON clause that retains the first unique entry of a column or combination of columns in the result set.

--create a new table to practice the SELECT DISTINCT clause.
CREATE TABLE colors(
  id SERIAL PRIMARY KEY,
  bcolor VARCHAR,
  fcolor VARCHAR
);

--insert values
INSERT INTO
  colors (bcolor, fcolor)
VALUES
  ('red', 'red'),
  ('red', 'red'),
  ('red', NULL),
  (NULL, 'red'),
  (NULL, NULL),
  ('green', 'green'),
  ('blue', 'blue'),
  ('blue', 'blue');
--verify
  SELECT id, bcolor,fcolor FROM  colors;

-- 1) PostgreSQL SELECT DISTINCT one column example
SELECT DISTINCT bcolor FROM colors ORDER BY bcolor NULLS LAST;

--2) SELECT DISTINCT on multiple columns
 
  
SELECT DISTINCT bcolor ,fcolor FROM colors ORDER BY bcolor ASC NULLS FIRST , fcolor DESC ;


--Summary
-- Use the SELECT DISTINCT to remove duplicate rows from a result set of a query