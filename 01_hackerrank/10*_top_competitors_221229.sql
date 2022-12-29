-- [10. Top Competitors]

# submitted code
SELECT s.hacker_id
     , h.name
FROM Submissions s
inner join Hackers h ON s.hacker_id = h.hacker_id
inner join Challenges c ON s.challenge_id = c.challenge_id
inner join Difficulty d ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY 1, 2
HAVING COUNT(s.submission_id) > 1
ORDER BY COUNT(s.submission_id) DESC, hacker_id;
