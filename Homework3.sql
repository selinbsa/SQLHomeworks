-- Selects countries that start with 'A' and end with 'a'
SELECT country FROM country WHERE country LIKE 'A%a';

-- Selects countries with at least 6 characters and ending with 'n'
SELECT country FROM country WHERE LENGTH(country) >= 6 AND country LIKE '%n';

-- Selects film titles that contain at least four occurrences of the letter 't' or 'T'
SELECT title FROM film WHERE title ILIKE '%t%t%t%t%';

-- Selects all columns from 'film' where title starts with 'C', length > 90, and rental_rate is 2.99
SELECT * FROM film WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
