SELECT A.NAME AS CATEGORY_NAME,
	COUNT(C.FILM_ID) AS FILM_COUNT
FROM CATEGORY A
JOIN FILM_CATEGORY B ON A.CATEGORY_ID = B.CATEGORY_ID
JOIN FILM C ON B.FILM_ID = C.FILM_ID
JOIN INVENTORY D ON C.FILM_ID = D.FILM_ID
JOIN RENTAL E ON D.INVENTORY_ID = E.INVENTORY_ID
JOIN PAYMENT F ON E.RENTAL_ID = F.RENTAL_ID
GROUP BY A.CATEGORY_ID,
	A.NAME
ORDER BY FILM_COUNT DESC
LIMIT 10