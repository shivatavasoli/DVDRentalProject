select  e.country, i.name, count(a.rental_id) as rental_count
from rental a
left join customer b on a.customer_id = b.customer_id
full join address c on b.address_id = c.address_id
full join city d on c.city_id = d.city_id
full join country e on d.country_id = e.country_id
full join inventory f on a.inventory_id = f.inventory_id
full join film g on f.film_id = g.film_id
full join film_category h on g.film_id = h.film_id
full join category i on h.category_id = i.category_id
 
group by e.country, i.name
order by country,rental_count desc
