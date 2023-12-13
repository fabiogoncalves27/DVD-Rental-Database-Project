-- Question 1: How many movies has each actor played in? 
CREATE TABLE query_1 AS
SELECT CONCAT(first_name, ' ', last_name) AS full_name, COUNT(fc.film_id) AS number 
FROM actor as a 
LEFT JOIN film_actor as fc 
ON a.actor_id = fc.actor_id  
GROUP BY full_name 
ORDER BY number DESC, full_name ASC;