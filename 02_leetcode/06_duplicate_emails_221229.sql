-- [06. Duplicate Emails]

# submitted code
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;