#Find the average GDP of all country regions
SELECT 
    region, AVG(value) AS average_value
FROM
    countries.gdp_data AS g
        INNER JOIN
    countries.country_codes AS c ON g.country_code = c.country_code
GROUP BY region