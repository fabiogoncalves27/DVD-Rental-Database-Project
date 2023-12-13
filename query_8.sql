CREATE TABLE query_8 AS
SELECT c.name, 
	   COUNT(r.rental_id), 
	   SUM(p.amount) AS total_amount,
	   to_char(r.rental_date, 'YYYY-MM') AS date
FROM rental AS r
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN payment AS p
ON r.rental_id = p.rental_id
INNER JOIN film AS f
ON i.film_id = f.film_id
INNER JOIN film_category AS fc
ON f.film_id = fc.film_id
INNER JOIN category AS c
ON fc.category_id = c.category_id
GROUP BY c.name, date
ORDER BY date