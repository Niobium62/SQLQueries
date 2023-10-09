#Find the countries with available data from all six tables starting no less than 1990
SELECT 
    *
FROM
    imf.budget_balance_2023 AS b
        INNER JOIN
    imf.current_account_2023 AS c ON b.countries = c.countries
        INNER JOIN
    imf.investment_2023 AS iv ON c.countries = iv.countries
        INNER JOIN
    imf.economic_growth_2023 AS e ON iv.countries = e.countries
        INNER JOIN
    imf.inflation_2023 AS inf ON e.countries = inf.countries
        INNER JOIN
    imf.unemployment_rate_2023 AS un ON inf.countries = un.countries
WHERE
    SUBSTRING(b.available_data, 1, 4) >= 1990
        AND SUBSTRING(c.available_data, 1, 4) >= 1990
        AND SUBSTRING(e.available_data, 1, 4) >= 1990
        AND SUBSTRING(inf.available_data, 1, 4) >= 1990
        AND SUBSTRING(iv.available_data, 1, 4) >= 1990
        AND SUBSTRING(un.available_data, 1, 4) >= 1990