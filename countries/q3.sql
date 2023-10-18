#Find the countries with an average GDP > 50,000,000,000
SELECT 
    country_name, AVG(value) AS average_gdp
FROM
    countries.gdp_data AS g
        INNER JOIN
    countries.country_codes AS c ON g.country_code = c.country_code
GROUP BY country_name
HAVING average_gdp > 50000000000