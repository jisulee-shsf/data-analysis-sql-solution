-- [25. 입양 시각 구하기2]

# submitted code
SET @hour := -1;

SELECT HOUR
     , COUNT(SEX_UPON_OUTCOME) AS 'COUNT'
FROM (SELECT (@hour := @hour + 1) AS 'HOUR'
      FROM ANIMAL_OUTS
      WHERE @hour < 23 ) t1
LEFT JOIN ANIMAL_OUTS t2 ON HOUR = HOUR(DATETIME)
GROUP BY 1
ORDER BY 1;