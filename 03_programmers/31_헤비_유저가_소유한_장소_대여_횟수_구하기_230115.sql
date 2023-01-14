-- [31. 헤비 유저가 소유한 장소]

# submitted code
SELECT ID
     , NAME
     , HOST_ID
FROM (SELECT ID
           , NAME
           , HOST_ID
           , COUNT(*) OVER (PARTITION BY HOST_ID) AS total_cnt
      FROM PLACES) t
WHERE total_cnt >= 2
ORDER BY ID;