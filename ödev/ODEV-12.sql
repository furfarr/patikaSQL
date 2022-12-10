--1.)

SELECT COUNT(*)  FROM film
WHERE length > 
(
	SELECT AVG(length) FROM film
);

--2.)
SELECT COUNT(*) FROM film
WHERE rental_rate = ANY
(
	SELECT MAX(rental_rate) FROM film
);

--3.)
(
	SELECT title, rental_rate, replacement_cost FROM film
	WHERE rental_rate = ANY
		(
			SELECT MIN(rental_rate) FROM film
		)
)

INTERSECT

(
	SELECT title, rental_rate, replacement_cost FROM film
	WHERE replacement_cost = ANY
		(
			SELECT MIN(replacement_cost) FROM film
		)
)

--4.)

SELECT payment.customer_id, customer.first_name, customer.last_name, COUNT(payment.customer_id) 
FROM payment
JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id,customer.first_name, customer.last_name
ORDER BY COUNT(payment.customer_id) DESC;