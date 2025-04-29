-- Selects the 'title' and 'description' columns from the 'film' table
SELECT title, description FROM film;

-- Selects all films where the length is greater than 60 and less than 75 minutes
SELECT * FROM film 
WHERE length > 60 AND length < 75;

-- Selects all films where the rental rate is 0.99 and the replacement cost is either 12.99 or 28.99
SELECT * FROM film 
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);

-- Selects all customers whose first name is exactly 'Mary'
SELECT * FROM customer 
WHERE first_name = 'Mary';

-- Selects all films that are 50 minutes or shorter and have a rental rate NOT equal to 2.99 or 4.99
SELECT * FROM film 
WHERE length <= 50 
  AND rental_rate != 2.99 
  AND rental_rate != 4.99;
