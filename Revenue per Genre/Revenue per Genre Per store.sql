SELECT a.name AS category_name, SUM(f.amount) as rental_revenue
FROM category a
JOIN film_category b ON a.category_id = b.category_id
JOIN film c ON b.film_id = c.film_id
JOIN inventory d ON c.film_id = d.film_id
JOIN rental e ON d.inventory_id = e.inventory_id
JOIN payment f ON e.rental_id = f.rental_id
GROUP BY a.category_id, a.name
ORDER BY rental_revenue desc;
