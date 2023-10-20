
select 
c.country,
max(cs.first_name) AS Name, 
max(cs.email) AS Email , 
max(ad.address) address, 
max(ad.district) district, 
max(ci.city) city, 
sum(p.amount) AS revenue
from country c
join city ci using (country_id)
join address ad on ci.city_id = ad.city_id
join customer cs on cs.address_id = ad.address_id
join payment p on cs.customer_id = p.customer_id
group by country
order by Sales desc
