--NOT WORKING THE LINE 9 - 
SELECT [product_id],
       [product_name],
       [brand_id],
       [category_id],
       [model_year],
       [list_price]
FROM [production].[products]
WHERE product_name LIKE 'Sun%' OR product_name LIKE '%Girl%'
      AND [list_price] <= 1000
      AND [category_id] IN (3, 6)
      
--SAME SITUATION, NOT WORKING THE LINE 21 - 
SELECT [product_id],
       [product_name],
       [brand_id],
       [category_id],
       [model_year],
       [list_price]
FROM [production].[products]
WHERE [product_name] IN ('Sun%', '%Girl%')
      AND [list_price] <= 1000
      AND [category_id] IN (3, 6)

--DID WITH 1 CONDITION - WORKING
SELECT [product_id],
       [product_name],
       [brand_id],
       [category_id],
       [model_year],
       [list_price]
FROM [production].[products]
WHERE [list_price] <= 1000
      AND [product_name] LIKE 'Sun%'
      AND [category_id] IN ('3', '6')

--INSERTED BRACKETS CORRECTLY IN THE 1ST CODE AND WORKED!!!
SELECT [product_id],
       [product_name],
       [brand_id],
       [category_id],
       [model_year],
       [list_price]
FROM [production].[products]
WHERE ([product_name] LIKE 'Sun%' 
      OR [product_name] LIKE '%Girl%')
      AND [list_price] <= 1000
      AND [category_id] IN (3, 6)
