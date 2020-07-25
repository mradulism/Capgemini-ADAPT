alter session set current_schema = mt_toy;
SET heading OFF

SELECT * FROM 
(SELECT TO_CHAR(RENTAL_START_DATE, 'Month'), COUNT(TOY_ID) AS TOTAL_TOYS
FROM TOY_RENTAL
GROUP BY TO_CHAR(RENTAL_START_DATE, 'Month')
ORDER BY TOTAL_TOYS  DESC)
WHERE ROWNUM = 1;