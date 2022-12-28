-- [01. Top Earners]

# submitted code - version 1
SELECT months * salary AS earnings
     , COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;

# submitted code - version 2
SELECT earnings
     , COUNT(*)
FROM (SELECT months * salary AS earnings
           , RANK() OVER (ORDER BY months * salary DESC) AS ranking
      FROM Employee) tbl
WHERE ranking = 1
GROUP BY earnings;
