-- [17. SQL Project Planning]

# submitted code
SELECT Start_Date
     , End_Date
FROM (SELECT Start_Date
           , ROW_NUMBER() OVER (ORDER BY Start_Date) AS s_rn
      FROM Projects
      where Start_Date NOT IN (SELECT End_Date FROM Projects)) AS s_date
INNER JOIN (SELECT End_Date
                 , ROW_NUMBER() OVER (ORDER BY End_Date) AS e_rn
            FROM Projects
            WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) AS e_date ON s_date.s_rn = e_date.e_rn
ORDER BY DATEDIFF(End_Date, Start_Date), Start_Date;