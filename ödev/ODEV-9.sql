--1.)
SELECT country.country , city.city FROM city
INNER JOIN country ON city.country_id = country.country_id
ORDER by country;

--2.)
SELECT customer.first_name, customer.last_name, payment.payment_id FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
ORDER BY payment_id;

--3.) 
SELECT customer.first_name, customer.last_name , rental.rental_id FROM rental
INNER JOIN customer ON customer.customer_id = rental.customer_id
ORDER BY rental_id;
