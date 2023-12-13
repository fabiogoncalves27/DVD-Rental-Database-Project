CREATE TABLE query_4 AS
SELECT f.title, f.rental_rate
FROM film AS f
LEFT JOIN inventory AS i
ON f.film_id = i.film_id
WHERE i.inventory_id IS NULL
ORDER BY f.rental_rate DESC, f.title ASC
