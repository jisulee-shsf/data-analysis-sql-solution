-- [32. 우유와 요거트가 담긴 장바구니]

# submitted code - version 1
SELECT a.CART_ID
FROM (SELECT *
      FROM CART_PRODUCTS 
      WHERE name = 'Milk') a 
INNER JOIN
     (SELECT *
      FROM CART_PRODUCTS
      WHERE name = 'Yogurt') b ON a.CART_ID = b.CART_ID;

# submitted code - version 2
SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME = 'MILK' 
  AND CART_ID IN (SELECT CART_ID
                  FROM CART_PRODUCTS
                  WHERE NAME = 'YOGURT');