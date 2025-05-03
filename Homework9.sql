-- Select city names and corresponding country names
SELECT
    city.city,
    country.country
FROM
    city
-- Join the city table with the country table on country_id
INNER JOIN
    country ON city.country_id = country.country_id;


-- Select payment ID along with the customer's first and last name
SELECT
    payment.payment_id,
    customer.first_name,
    customer.last_name
FROM
    payment
-- Join the payment table with the customer table on customer_id
INNER JOIN
    customer ON payment.customer_id = customer.customer_id;


-- Select rental ID along with the customer's first and last name
SELECT
    rental.rental_id,
    customer.first_name,
    customer.last_name
FROM
    rental
-- Join the rental table with the customer table on customer_id
INNER JOIN
    customer ON rental.customer_id = customer.customer_id;
