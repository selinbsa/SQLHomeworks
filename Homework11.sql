-- All unique first_name values from actor and customer
SELECT first_name FROM actor
UNION
SELECT first_name FROM customer
ORDER BY first_name;

-- first_name values in actor but not in customer
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer
ORDER BY first_name;

-- first_name values in actor but not in customer
SELECT first_name FROM actor
EXCEPT
SELECT first_name FROM customer
ORDER BY first_name;

-- All first_name values including duplicates
SELECT first_name FROM actor
UNION ALL
SELECT first_name FROM customer
ORDER BY first_name;

-- Common first_name values including duplicates (using INNER JOIN logic)
SELECT a.first_name FROM actor a
JOIN customer c ON a.first_name = c.first_name
ORDER BY a.first_name;

-- first_name values in actor but not in customer, including duplicates
SELECT a.first_name FROM actor a
LEFT JOIN customer c ON a.first_name = c.first_name
WHERE c.first_name IS NULL
ORDER BY a.first_name;
