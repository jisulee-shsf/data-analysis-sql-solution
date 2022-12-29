-- [07. Consecutive Numbers]

# submitted code
SELECT DISTINCT num AS ConsecutiveNums
FROM (SELECT num
           , lead(num, 1) OVER (ORDER BY id) AS lead_num1
           , lead(num, 2) OVER (ORDER BY id) AS lead_num2
FROM Logs) tbl
WHERE num = lead_num1 AND lead_num1 = lead_num2;