SELECT
    c.first_name,
    c.last_name
FROM customer c
JOIN rental r
    ON c.customer_id = r.customer_id
WHERE r.rental_ts >= '2020-05-01'
  AND r.rental_ts < '2020-06-01'
GROUP BY c.customer_id, c.first_name, c.last_name #here group by bcoz we want per customer not all customer 
ORDER BY COUNT(r.rental_id) DESC
LIMIT 1;
