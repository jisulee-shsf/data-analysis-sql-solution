-- [12. Binary Tree Nodes]

# submitted code
SELECT N
     , CASE WHEN P IS NULL then 'Root'
            WHEN N IN (SELECT DISTINCT P FROM BST) THEN 'Inner'
            ELSE 'Leaf' 
            END
FROM BST
ORDER BY N;