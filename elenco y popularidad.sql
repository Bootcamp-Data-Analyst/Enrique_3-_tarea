use sakila;

SELECT
  f.film_id,
  f.title,
  a.actor_id,
  LOWER(a.first_name) AS first_name_clean,
  LOWER(a.last_name) AS last_name_clean,
  LOWER(CONCAT(a.first_name, ' ', a.last_name)) AS actor_full_name
FROM film_actor fa
JOIN actor a ON fa.actor_id = a.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE fa.actor_id IS not NULL