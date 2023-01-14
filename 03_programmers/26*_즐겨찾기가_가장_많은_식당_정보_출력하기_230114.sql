-- [26. 즐겨찾기가 가장 많은 식당 정보 출력하기]

# submitted code
SELECT FOOD_TYPE
     , REST_ID
     , REST_NAME
     , FAVORITES
FROM (SELECT *
           , RANK() OVER (PARTITION BY FOOD_TYPE ORDER BY FAVORITES DESC) AS ranking
      FROM REST_INFO) t
WHERE ranking = 1
GROUP BY 1
ORDER BY 1 DESC;
