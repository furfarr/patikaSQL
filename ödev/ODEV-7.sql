-- 1.) 
SELECT rating,title FROM film 
GROUP BY rating,title 
ORDER BY rating,title;

-- 2.) 
SELECT replacement_cost,COUNT(replacement_cost) FROM film 
GROUP BY replacement_cost 
HAVING COUNT(replacement_cost) > 50 
ORDER BY replacement_cost;

-- 3.) 
SELECT store_id,COUNT(customer_id) FROM customer GROUP BY store_id;

-- 4.) 
SELECT country_id,COUNT(country_id) FROM city
GROUP BY country_id
ORDER BY COUNT(country_id) DESC
LIMIT 1;


