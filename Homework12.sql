-- Select the count of films where the length is greater than the average film length
SELECT COUNT(*) AS film_count FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- Select the count of films with the maximum rental_rate
SELECT COUNT(*) AS film_count FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- Select the title, rental_rate, and replacement_cost of the films with the lowest values
SELECT title, rental_rate, replacement_cost FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY title;

-- Select the customer_id and count of payments for each customer, ordered by the payment count
SELECT customer_id, COUNT(payment_id) AS payment_count FROM payment
GROUP BY customer_id
ORDER BY payment_count DESC;



