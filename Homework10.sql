-- Select city and corresponding country names using LEFT JOIN
SELECT city.city, country.country FROM city
LEFT JOIN country ON city.country_id = country.country_id;

-- Select payment IDs along with the first and last names of customers using RIGHT JOIN
SELECT customer.first_name, customer.last_name, payment.payment_id FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id;

-- Select rental IDs and customer names using FULL JOIN
SELECT customer.first_name, customer.last_name, rental.rental_id FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id;
