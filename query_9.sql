CREATE TABLE query_9 AS
SELECT f.title, c.name, COUNT(r.rental_id)
FROM rental AS r
LEFT JOIN inventory AS i
ON r.inventory_id = i.inventory_id
LEFT JOIN film AS f
ON f.film_id = i.film_id
LEFT JOIN film_category AS fc
ON f.film_id = fc.film_id
LEFT JOIN category AS c
ON fc.category_id = c.category_id
WHERE i.film_id IS NOT NULL
GROUP BY f.title, c.name
ORDER BY COUNT(r.rental_id) DESC