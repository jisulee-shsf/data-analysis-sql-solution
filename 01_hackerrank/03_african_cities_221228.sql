-- [03. African Cities]

# submitted code
SELECT c1.NAME   
FROM CITY c1
INNER JOIN COUNTRY c2 ON c1.CountryCode = c2.Code
WHERE CONTINENT = 'Africa';
