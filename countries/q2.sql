#Find the average GDP of all countries up to 1995
SELECT 
    country_name, AVG(value) AS average_gdp_until_1995
FROM
    countries.gdp_data AS g
        INNER JOIN
    countries.country_codes AS c ON g.country_code = c.country_code
WHERE
    year <= 1995
GROUP BY country_name