-- The DISTINCT ON clause allows you to retrieve unique rows based on specified columns. Here’s the basic syntax of the DISTINCT ON clause:

-- SELECT
--   DISTINCT ON (column1, column2,...) column1,
--   column2, ... 
-- FROM
--   table_name
-- ORDER BY
--   column1,
--   column2, ... ;

--First, create a table called student scores to store the student’s scores:

CREATE TABLE student_scores (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  subject VARCHAR(50) NOT NULL,
  score INTEGER NOT NULL
);


INSERT INTO student_scores (name, subject, score)
VALUES
  ('Alice', 'Math', 90),
  ('Bob', 'Math', 85),
  ('Alice', 'Physics', 92),
  ('Bob', 'Physics', 88),
  ('Charlie', 'Math', 95),
  ('Charlie', 'Physics', 90);


--  retrieve the highest score for each student in either Math or Physics using the DISTINCT ON clause:
  SELECT
  DISTINCT ON (name) name,
  subject,
  score
FROM
  student_scores
ORDER BY
  name,
  score DESC;

--   Summary
-- Use the DISTINCT ON clause to keep the first unique entry from each column or combination of columns in a result set.
-- Always use the ORDER BY clause to determine which entry to retain in the result set