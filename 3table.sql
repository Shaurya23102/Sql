Instruction
Write a query to return the first name and last name of all actors in the film 'AFRICAN EGG'.
The order of your results doesn't matter.
Table 1: actor


sample data
  col_name   | col_type
-------------+--------------------------
 actor_id    | integer
 first_name  | text
 last_name   | text
Table 2: film


sample data
       col_name       |  col_type
----------------------+--------------------------
 film_id              | integer
 title                | text
 description          | text
 release_year         | integer
 language_id          | smallint
 original_language_id | smallint
 rental_duration      | smallint
 rental_rate          | numeric
 length               | smallint
 replacement_cost     | numeric
 rating               | text
Table 3: film_actor


sample data
Films and their casts

  col_name   | col_type
-------------+--------------------------
 actor_id    | smallint
 film_id     | smallint
Sample results

 first_name | last_name
------------+-----------
 GARY       | PHOENIX
 DUSTIN     | TAUTOU


SELECT
    a.first_name,
    a.last_name
FROM actor a
INNER JOIN film_actor fa
    ON a.actor_id = fa.actor_id
INNER JOIN film f
    ON fa.film_id = f.film_id
WHERE f.title = 'AFRICAN EGG';
