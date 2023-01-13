-- [13. 오랜 기간 보호한 동물2]

# submitted code - version 1
SELECT ANIMAL_ID
     , NAME
FROM (SELECT i.ANIMAL_ID
           , i.NAME
           , DATEDIFF(o.DATETIME, i.DATETIME) AS duration
      FROM ANIMAL_INS i
      INNER JOIN ANIMAL_OUTS o ON i.ANIMAL_ID = o.ANIMAL_ID) t
ORDER BY duration DESC
LIMIT 2;

# submitted code - version 2
SELECT ANIMAL_ID
     , NAME
FROM (SELECT i.ANIMAL_ID
           , i.NAME
           , DENSE_RANK() OVER (ORDER BY DATEDIFF(o.DATETIME, i.DATETIME) DESC) AS rank_duration
      FROM ANIMAL_INS i
      INNER JOIN ANIMAL_OUTS o ON i.ANIMAL_ID = o.ANIMAL_ID) t
WHERE rank_duration <= 2;