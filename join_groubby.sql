Instruction
Write a query to return the name of the actor who appears in the most films.
You have to use INNER JOIN in your query.
Table 1: actor


sample data
  col_name   | col_type
-------------+--------------------------
 actor_id    | integer
 first_name  | text
 last_name   | text
Table 2: film_actor


sample data
Films and their casts

  col_name   | col_type
-------------+--------------------------
 actor_id    | smallint
 film_id     | smallint
Sample results

 actor_id | first_name | last_name
----------+------------+-----------
     1234 | FIRST_NAME | LAST_NAME
SELECT a.actor_id, a.first_name, a.last_name
FROM actor a
INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY COUNT(fa.film_id) DESC
LIMIT 1;
