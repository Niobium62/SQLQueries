#Find the average budget balance forecast of all countries with an unemployment rate forecast >= 10
SELECT 
    AVG(budget_balance_forecast) AS average_budget_balance_forecast
FROM
    imf.budget_balance_2023 AS b
        INNER JOIN
    imf.unemployment_rate_2023 AS u ON b.countries = u.countries
WHERE
    unemployment_rate_forecast >= 10