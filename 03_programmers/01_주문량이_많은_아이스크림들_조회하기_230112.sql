-- [01. 주문량이 많은 아이스크림들 조회하기]

# submitted code - version 1
SELECT j.FLAVOR
FROM (SELECT FLAVOR 
           , SUM(TOTAL_ORDER) AS july_order
      FROM JULY
      GROUP BY FLAVOR) j INNER JOIN FIRST_HALF h ON j.FLAVOR = h.FLAVOR
ORDER BY july_order + h.TOTAL_ORDER DESC
LIMIT 3;