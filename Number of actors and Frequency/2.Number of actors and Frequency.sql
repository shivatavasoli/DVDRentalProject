SELECT number_of_actors, COUNT(*) AS frequency
FROM (
    SELECT film_id, COUNT(*) AS number_of_actors
    FROM film_actor
    GROUP BY film_id
) AS actor_counts
GROUP BY number_of_actors
ORDER BY number_of_actors ASC;
