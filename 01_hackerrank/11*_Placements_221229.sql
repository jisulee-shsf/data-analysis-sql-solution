-- [11. Placements]

# submitted code
SELECT s.Name
FROM Students s
INNER JOIN Packages p1 ON s.ID = p1.ID
INNER JOIN Friends f ON p1.ID = f.ID
INNER JOIN Packages p2 ON f.Friend_ID = p2.ID
WHERE p2.Salary > p1.Salary
ORDER BY p2.Salary