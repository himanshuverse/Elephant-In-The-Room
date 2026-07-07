-- The BETWEEN operator allows you to check if a value falls within a range of values.
-- value BETWEEN low AND high;  //synatx

-- 1) Using the PostgreSQL BETWEEN operator with numbers
-- The following query uses the BETWEEN operator to retrieve payments with payment_id is between 17503 and 17505:
SELECT
  payment_id,
  amount
FROM
  payment
WHERE
  payment_id BETWEEN 17503 AND 17505
ORDER BY
  payment_id;

--   2) Using the PostgreSQL NOT BETWEEN example
-- The following example uses the NOT BETWEEN operator to find payments with the payment_id not between 17503 and 17505:
SELECT
  payment_id,
  amount
FROM
  payment
WHERE
  payment_id NOT BETWEEN 17503 AND 17505
ORDER BY
  payment_id;

--   3) Using the PostgreSQL BETWEEN with a date range
-- If you want to check a value against a date range, you use the literal date in ISO 8601 format, which is YYYY-MM-DD.

-- The following example uses the BETWEEN operator to find payments whose payment dates are between 
-- 2007-02-15 and 2007-02-20 and amount more than 10:
SELECT
  customer_id,
  payment_id,
  amount,
  payment_date
FROM
  payment
WHERE
  payment_date BETWEEN '2007-02-15' AND '2007-02-20'
  AND amount > 10
ORDER BY
  payment_date;

--   Summary
-- Use the BETWEEN operator to check if a value falls within a particular range.
-- Use the NOT BETWEEN operator to negate the BETWEEN operator.