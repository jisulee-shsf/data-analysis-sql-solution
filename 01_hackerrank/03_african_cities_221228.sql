-- [03. African Cities]

# submitted code
SELECT c1.NAME   
FROM CITY c1
INNER JOIN COUNTRY c2 ON c1.COUNTRYCODE = c2.CODE
WHERE CONTINENT = 'Africa';
