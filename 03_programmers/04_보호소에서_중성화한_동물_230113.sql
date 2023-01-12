-- [04. 보호소에서 중성화한 동물]

# submitted code - version 1
SELECT ANIMAL_ID
     , ANIMAL_TYPE
     , NAME
FROM (SELECT i.ANIMAL_ID
           , i.ANIMAL_TYPE
           , i.NAME
           , o.SEX_UPON_OUTCOME
      FROM ANIMAL_INS i
      INNER JOIN ANIMAL_OUTS o ON i.ANIMAL_ID = o.ANIMAL_ID
      WHERE i.SEX_UPON_INTAKE LIKE '%intact%') t
WHERE SEX_UPON_OUTCOME LIKE '%Spayed%'
   OR SEX_UPON_OUTCOME LIKE '%Neutered%'
ORDER BY 1;

# submitted code - version 2
SELECT i.ANIMAL_ID
     , i.ANIMAL_TYPE
     , i.NAME
FROM ANIMAL_INS i
INNER JOIN ANIMAL_OUTS o ON i.ANIMAL_ID = o.ANIMAL_ID
WHERE i.SEX_UPON_INTAKE LIKE '%intact%' 
  AND (o.SEX_UPON_OUTCOME LIKE '%Spayed%' OR SEX_UPON_OUTCOME LIKE '%Neutered%')
ORDER BY 1;