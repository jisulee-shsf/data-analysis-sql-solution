-- [03. African Cities]

# submitted code
SELECT C1.NAME   
FROM CITY C1
INNER JOIN COUNTRY C2 ON C1.CountryCode = C2.Code
WHERE CONTINENT = 'Africa';