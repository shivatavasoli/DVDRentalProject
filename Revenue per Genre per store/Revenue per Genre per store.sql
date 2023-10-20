with c as (
Select store.store_id,
film_category.category_id, 
category.name,
sum(payment.amount) Revenue 

From store
 Join inventory On inventory.store_id = store.store_id
 Join rental On rental.inventory_id = inventory.inventory_id 
 Join payment On payment.rental_id = rental.rental_id
 Join film_category On film_category.film_id = inventory.film_id Inner Join category On film_category.category_id = category.category_id
group by store.store_id,film_category.category_id, category.name
order by Revenue desc 
)
select c.store_id, c.name, max(c.Revenue) Revenue  
from c 
group by c.store_id,c.name;
