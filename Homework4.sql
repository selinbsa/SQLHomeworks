-- Lists all distinct replacement_cost values from the film table
SELECT DISTINCT replacement_cost FROM film;

-- Counts how many distinct replacement_cost values exist in the film table
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- Counts how many films have titles starting with 'T' and have a rating of 'G'
SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G';

-- Counts how many country names consist of exactly 5 characters
SELECT COUNT(*) FROM country WHERE LENGTH(country) = 5;

-- Counts how many city names end with the letter 'R' or 'r'
SELECT COUNT(*) FROM city WHERE city ILIKE '%r';
