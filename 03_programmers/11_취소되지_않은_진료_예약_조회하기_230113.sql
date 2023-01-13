-- [11. 취소되지 않은 진료 예약 조회하기]

# submitted code
SELECT a.APNT_NO 
     , p.PT_NAME
     , p.PT_NO
     , a.MCDP_CD
     , d.DR_NAME
     , a.APNT_YMD
FROM APPOINTMENT a 
INNER JOIN PATIENT p ON a.PT_NO = p.PT_NO
INNER JOIN DOCTOR d ON a.MDDR_ID = d.DR_ID
WHERE DATE(a.APNT_YMD) = '2022-04-13'  
  AND a.MCDP_CD = 'CS'
  AND a.APNT_CNCL_YN = 'N'
ORDER BY a.APNT_YMD;