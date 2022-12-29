-- [08. Department Top Three Salaries]

# submitted code
SELECT Department
     , Employee
     , Salary
FROM ( SELECT d.name AS Department 
            , e.name AS Employee
            , e.salary AS Salary
            , DENSE_RANK() OVER (PARTITION BY d.name ORDER BY salary desc) AS Salary_ranking
FROM Employee e
INNER JOIN Department d ON e.departmentId = d.id) tbl 
WHERE Salary_ranking <= 3;