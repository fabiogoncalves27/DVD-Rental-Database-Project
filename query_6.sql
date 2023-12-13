CREATE TABLE query_6 AS
SELECT concat(c.first_name, ' ', c.last_name) AS fullname, COUNT(r.rental_id) AS numberofmovies
FROM customer AS c
LEFT JOIN rental AS r
ON c.customer_id = r.customer_id
GROUP BY fullname
ORDER BY numberofmovies DESC