-- Calculates the average rental_rate value from the film table
SELECT AVG(rental_rate) AS average_rental_rate FROM film;

-- Counts how many films have titles starting with the letter 'C'
SELECT COUNT(*) AS count_starting_with_C FROM film WHERE title LIKE 'C%';

-- Finds the maximum film length among films with a rental_rate of 0.99
SELECT MAX(length) AS max_length_for_099 FROM film WHERE rental_rate = 0.99;

-- Counts the number of distinct replacement_cost values for films longer than 150 minutes
SELECT COUNT(DISTINCT replacement_cost) AS distinct_costs_over_150 FROM film WHERE length > 150;

