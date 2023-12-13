CREATE TABLE query_10 AS
WITH table1 AS(
	SELECT EXTRACT(DAY FROM return_date)- EXTRACT(DAY FROM rental_date) AS days_kept, 
		   f.rental_duration
	FROM film AS f 
	INNER JOIN inventory AS i
	ON f.film_id = i.film_id
	INNER JOIN rental AS r
	ON i.inventory_id= r.inventory_id
	ORDER BY days_kept
)
SELECT CASE 
	WHEN days_kept IS null THEN 'Never returned'
	WHEN days_kept > rental_duration THEN 'Late'
	WHEN days_kept = rental_duration THEN 'On time'
	WHEN days_kept < rental_duration THEN 'Early'
	end as return_status,
	COUNT(*) as count
FROM table1
GROUP BY return_status
ORDER BY count


