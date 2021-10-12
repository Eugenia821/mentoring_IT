-- for year 2019 I've got other average price than in PPT
SELECT model_year,
       AVG([list_price]) AS avg_list_price
FROM [production].[products]
WHERE [list_price] >= 832.99
GROUP BY model_year
HAVING MIN([list_price]) >= 850
