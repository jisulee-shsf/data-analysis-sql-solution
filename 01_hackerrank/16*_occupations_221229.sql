-- [16. Occupations]

# submitted code
SELECT MIN(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) AS Doctor
     , MIN(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) AS Professor
     , MIN(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) AS Singer
     , MIN(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) AS Actor
FROM (SELECT Occupation
           , Name
           , ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
      FROM Occupations) tbl
GROUP BY rn;