-- [04. Population Census]

# submitted code
SELECT SUM(c1.POPULATION)
FROM CITY c1
INNER JOIN COUNTRY c2 ON c1.CountryCode = c2.Code
WHERE CONTINENT = 'Asia'