-- Lists the top 5 longest films (by length) whose title ends with the letter 'n'
SELECT * FROM film WHERE title ILIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- Lists the next 5 shortest films (6th to 10th) whose title ends with 'n'
SELECT * FROM film WHERE title ILIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

-- Lists the top 4 customers with store_id = 1, ordered by last_name in descending order
SELECT * FROM customer WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

