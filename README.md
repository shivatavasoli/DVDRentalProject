# DVDRentalProject
DVD Rental Database Project

This dataset stores a diverse amount of data related to the DVD rental records, customer patterns, payment records, store, film, category and actor trends internationally. We will use various SQL enquiry to study the customer demographic and DVD rental patterns.
There are 15 tables in the DVD Rental database:
	actor – stores actors data including first name and last name.
	film – stores film data such as title, release year, length, rating, etc.
	film_actor – stores the relationships between films and actors.
	category – stores film’s categories data.
	film_category- stores the relationships between films and categories.
	store – contains the store data including manager staff and address.
	inventory – stores inventory data.
	rental – stores rental data.
	payment – stores customer’s payments.
	staff – stores staff data.
	customer – stores customer data.
	address – stores address data for staff and customers
	city – stores city names.
	country – stores country names.

Challenge 3: Number of Actors Frequency

Objective: Determine the frequency of the number of actors in films.
Solution: In this challenge, there are two provided solutions to achieve the same result.

Subquery Approach:
1.	A subquery is used to count the number of actors for each film.
2.	The outer query then counts the frequency of each unique number of actors.
3.	Results are ordered by the number of actors in ascending order.
Common Table Expression (CTE) Approach:
1.	A Common Table Expression (CTE) is used to calculate the number of actors for each film.
2.	The main query counts the frequency of each unique number of actors from the CTE.
3.	Results are ordered by the number of actors in ascending order.


