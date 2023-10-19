select 	film.title filmtitle, category.name category, 
		sum(payment.amount) 							as total_amount, 
		sum(rental.return_date - rental.rental_date) 	as time_rented
from payment
join rental 		on (payment.rental_id 			= rental.rental_id)
join inventory 		on (rental.inventory_id 		= inventory.inventory_id)
join film 			on (inventory.film_id 			= film.film_id)
join film_category 	on (film_category.film_id 		= film.film_id)
join category 		on (film_category.category_id 	= category.category_id)
	where 
		 category.name in ('Sports')
group by
	film.title, category.name

order by 
	total_amount desc