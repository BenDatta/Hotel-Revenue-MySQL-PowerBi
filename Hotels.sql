WITH hotels as (
SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

SELECT * FROM hotels
LEFT JOIN dbo.market_segment$
ON hotels.market_segment = dbo.market_segment$.market_segment
LEFT JOIN dbo.meal_cost$
ON hotels.meal = dbo.meal_cost$.meal