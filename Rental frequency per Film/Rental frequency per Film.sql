Select language.name, film.title film_title, count(inventory.film_id) as frequency,sum(payment.amount) revenue
From language
Inner Join film On film.language_id = language.language_id 
Inner Join inventory On inventory.film_id = film.film_id 
Inner Join rental On rental.inventory_id = inventory.inventory_id
full Join payment On payment.rental_id = rental.rental_id
group by film.title,language.name 
order by frequency Desc;
