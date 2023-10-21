DVD Rental Database Project

 

This dataset stores a diverse amount of data related to the DVD rental records, customer patterns, payment records, store, film, category and actor trends internationally. We will use various SQL enquiries to study the customer demographic and DVD rental patterns.



There are 15 tables in the DVD Rental database:

actor – stores actors data including first name and last name.

film – stores film data such as title, release year, length, rating, etc.

film_actor – stores the relationships between films and actors.

category – stores film’s categories data.

film_category- stores the relationships between films and categories.

store – contains the store data including manager staff and address.

inventory – stores inventory data.

rental – stores rental data.

payment – stores customer’s payments.

staff – stores staff data.

customer – stores customer data.

address – stores address data for staff and customers

city – stores city names.

country – stores country names.

 

Challenge 2: Number of Actors Frequency

 

Objective: Determine the frequency of the number of actors in films.

Solution: In this challenge, there are two provided solutions to achieve the same result.

 

Subquery Approach:

A subquery is used to count the number of actors for each film.
The outer query then counts the frequency of each unique number of actors.
Results are ordered by the number of actors in ascending order.
Common Table Expression (CTE) Approach:

A Common Table Expression (CTE) is used to calculate the number of actors for each film.
The main query counts the frequency of each unique number of actors from the CTE.
Results are ordered by the number of actors in ascending order.
SQL Summary
 

Below are the SQL inquiries summary and the results:

1. Genre per store in terms of Frequency: this query sorts the categories based on the rental frequency and is classified by store too. The sports category has the most frequency in store 2 and total revenue of 2604$, while the Action category has the most rental frequency in store 1 with 543 frequency and 2089$ revenue.
2. Number of actors and frequency: films with 1 actor have 21 times playing history in films; films with 2 actors have 69 times; films with 3 actors have 119 times playing and the last one is 15 with the history of 1 times.
3. Rental Frequency per Film: "Bucket Brotherhood" is the most popular film with 34 rental frequency and revenue of 150.72$; the next one is "Rocketeer Mother" with 33 rental frequency and 97.72$ revenue and the last one is "Hardly Robbers" with 15$ revenue.
4. Return Status Per store: There are 3 statuses for rental (early, on time, late) this query counts the films that rented and classifies it based on this status for each store.
5. Revenue and Rental time per Film in Sport Category:  This query sorts the films in Sports category based on produced revenue and the total time that rented. Saturday Lambs is the best Film with 190.74$ revenue and the total time rented is 122 days.
6. Revenue per genre per store: top1 Comedy in store 2 with 1833$ revenue; Top2 Sports with 2604$ in store 2; Top3 Horror with 1880$. Action ranks last with just 2089$ revenue.
7. Rental Revenue per Category: Top1 Sports ($4892); Top2 Sci-Fi ($4336); Top3 Animation ($4245)
8. Top 10 Category of Films rented: This query extracts the top categories based on rental count. Sports has the most rental count with 1081 and Animation is the next with 1065.
9. Top Genre rental per Country: this query extracts the top rental count based on category for each country. India has 118 rentals in the Action category. Next is Sports with 115 in India.
10. Top revenue by customer by country This query returns the best customer in each country in terms of revenue. It was classified by country. The best is Wyne from India with producing 6034$ revenue, the next is Walter from China with 5251$ from China.
