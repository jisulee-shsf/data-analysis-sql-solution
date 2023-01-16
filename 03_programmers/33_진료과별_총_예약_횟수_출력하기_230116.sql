-- [33. 진료과별 총 예약 횟수 출력하기]

# submitted code
SELECT MCDP_CD AS 진료과코드
     , COUNT(APNT_NO) AS 5월예약건수
FROM APPOINTMENT
WHERE MONTH(APNT_YMD) = 5 
GROUP BY 1
ORDER BY 5월예약건수, 진료과코드;