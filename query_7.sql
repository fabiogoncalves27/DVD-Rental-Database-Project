CREATE TABLE query_7 AS
SELECT c.name, COUNT(r.rental_id) AS total_rental, SUM(p.amount) AS total_payment
FROM rental AS r
INNER JOIN payment AS P
ON r.rental_id = p.rental_id
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film AS f
ON i.film_id = f.film_id
INNER JOIN film_category AS fc
ON f.film_id = fc.film_id 
INNER JOIN category AS c
ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY total_rental DESC