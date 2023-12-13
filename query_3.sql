CREATE TABLE query_3 AS
SELECT f.title, COUNT(p.rental_id) AS times_rented, SUM(p.amount) AS total_amount
FROM film AS f
LEFT JOIN inventory AS i
ON f.film_id = i.film_id
LEFT JOIN rental AS r
ON i.inventory_id = r.inventory_id
LEFT JOIN payment AS p
ON r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY times_rented DESC, total_amount DESC