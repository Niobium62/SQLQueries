#Find the average investment forecast of all countries that have an current account forecast <= 0. Group by their economic growth forecast, by 1s
SELECT 
    FLOOR(economic_growth_forecast) AS economic_forecast_group,
    ROUND(AVG(investment_forecast), 3) AS average_investment_forecast_per_group
FROM
    imf.economic_growth_2023 AS e
        INNER JOIN
    imf.current_account_2023 AS c ON e.countries = c.countries
        INNER JOIN
    imf.investment_2023 AS i ON c.countries = i.countries
WHERE
    current_account_forecast <= 0
GROUP BY FLOOR(economic_growth_forecast)