use sakila;
SELECT
f.film_id,
LOWER(TRIM(f.title)) AS title,
LOWER(TRIM(f.description)) AS description,
f.length,
f.rating,
LOWER(l.name) AS language,
c.category_id,
LOWER(c.name) AS category,
i.inventory_id

FROM film f
JOIN language l ON f.language_id = l.language_id
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
LEFT JOIN inventory i ON f.film_id = i.film_id;