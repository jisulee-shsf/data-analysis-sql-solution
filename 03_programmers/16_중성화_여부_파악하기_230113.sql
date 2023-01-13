-- [16. 중성화 여부 파악하기]

# submitted code - version 1
SELECT ANIMAL_ID
     , NAME
     , IF(SEX_UPON_INTAKE LIKE 'Neutered%' OR SEX_UPON_INTAKE LIKE 'Spayed%', 'O', 'X') AS 중성화
FROM ANIMAL_INS
ORDER BY 1;

# submitted code - version 2
SELECT ANIMAL_ID
     , NAME
     , CASE WHEN SEX_UPON_INTAKE LIKE 'Neutered%' OR SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
            ELSE 'X' 
       END AS 중성화
FROM ANIMAL_INS
ORDER BY 1;