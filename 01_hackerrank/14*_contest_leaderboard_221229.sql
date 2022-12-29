-- [14. Contest Leaderboard]

# submitted code
SELECT h.hacker_id
     , h.name
     , SUM(max_score) as total_score
FROM (SELECT hacker_id
           , challenge_id
           , MAX(score) as max_score
      FROM Submissions
      GROUP BY 1, 2) t inner join hackers h ON t.hacker_id = h.hacker_id
GROUP BY 1, 2
HAVING total_score != 0
ORDER BY total_score DESC, hacker_id;