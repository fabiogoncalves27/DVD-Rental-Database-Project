CREATE TABLE query_5 AS
SELECT concat(c.first_name, ' ', c.last_name) AS Full_Name, COUNT(r.rental_id) AS Number_Movies_Not_Returned
FROM customer AS c
LEFT JOIN rental AS r
ON c.customer_id = r.customer_id
WHERE r.return_date IS NULL 
GROUP BY Full_Name
HAVING COUNT(r.rental_id) > 1
ORDER BY Number_Movies_Not_Returned DESC