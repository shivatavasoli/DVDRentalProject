SELECT E.COUNTRY,
	I.NAME CATEGORY,
	COUNT(A.RENTAL_ID) AS RENTAL_COUNT
FROM RENTAL A
LEFT JOIN CUSTOMER B ON A.CUSTOMER_ID = B.CUSTOMER_ID
FULL JOIN ADDRESS C ON B.ADDRESS_ID = C.ADDRESS_ID
FULL JOIN CITY D ON C.CITY_ID = D.CITY_ID
FULL JOIN COUNTRY E ON D.COUNTRY_ID = E.COUNTRY_ID
FULL JOIN INVENTORY F ON A.INVENTORY_ID = F.INVENTORY_ID
FULL JOIN FILM G ON F.FILM_ID = G.FILM_ID
FULL JOIN FILM_CATEGORY H ON G.FILM_ID = H.FILM_ID
FULL JOIN CATEGORY I ON H.CATEGORY_ID = I.CATEGORY_ID
GROUP BY E.COUNTRY,
	I.NAME
ORDER BY 
	RENTAL_COUNT DESC