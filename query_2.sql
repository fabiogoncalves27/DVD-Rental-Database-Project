CREATE TABLE query_2 AS
SELECT COUNT(f.film_id)
FROM film AS f
LEFT JOIN inventory AS i
ON f.film_id = i.film_id
WHERE i.film_id IS NULL
