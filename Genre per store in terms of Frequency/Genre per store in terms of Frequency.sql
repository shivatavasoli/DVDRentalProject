with c as (
Select store.store_id,
film_category.category_id,
category.name genre, 
count(inventory.film_id) as frequency,
sum(payment.amount) revenue
From store
 Join inventory On inventory.store_id = store.store_id
 Join rental On rental.inventory_id = inventory.inventory_id 
 Join payment On payment.rental_id = rental.rental_id
 Join film_category On film_category.film_id = inventory.film_id Inner Join category On film_category.category_id = category.category_id
group by store.store_id,film_category.category_id, category.name
order by frequency desc
)
select c.store_id, c.name category_name, max(c.frequency) frequency,sum(c.revenue) total_revenue from c
group by c.store_id, c.category_id, c.name order by max(c.frequency) desc;
