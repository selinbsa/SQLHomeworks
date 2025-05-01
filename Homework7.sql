-- Groups the films by their rating and counts how many films belong to each rating
SELECT rating, COUNT(*) AS film_countFROM film
GROUP BY rating;

-- Groups films by replacement_cost and filters groups having more than 50 films
SELECT replacement_cost, COUNT(*) AS film_countFROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

-- Counts the number of customers for each store_id
SELECT store_id, COUNT(*) AS customer_count FROM customer
GROUP BY store_id;

-- Finds the country_id with the highest number of cities
SELECT country_id, COUNT(*) AS city_count FROM city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;

