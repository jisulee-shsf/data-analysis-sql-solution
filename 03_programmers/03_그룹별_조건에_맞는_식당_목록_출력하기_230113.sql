-- [03. 그룹별 조건에 맞는 식당 목록 출력하기]

# submitted code
WITH vip_members AS (
    SELECT p.MEMBER_NAME
         , r.REVIEW_TEXT
         , DATE_FORMAT(r.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
         , COUNT(p.MEMBER_NAME) OVER (PARTITION BY p.MEMBER_NAME) AS cnt_review
    FROM MEMBER_PROFILE p
    INNER JOIN REST_REVIEW r ON p.MEMBER_ID = r.MEMBER_ID
)
SELECT MEMBER_NAME 
     , REVIEW_TEXT
     , REVIEW_DATE
FROM vip_members 
WHERE cnt_review = (SELECT MAX(cnt_review) FROM vip_members)
ORDER BY REVIEW_DATE, REVIEW_TEXT;