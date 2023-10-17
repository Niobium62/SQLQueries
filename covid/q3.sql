# Select countries with cumulative deaths < 1000
SELECT 
    most_recent_date,
    a.country_code,
    MAX(cumulative_deaths) AS deaths
FROM
    covid.`who-covid-19-global-data` AS a
        INNER JOIN
    (SELECT 
        MAX(date_reported) AS most_recent_date, country_code
    FROM
        covid.`who-covid-19-global-data`
    GROUP BY country_code) AS b ON a.country_code = b.country_code
GROUP BY country_code , most_recent_Date
HAVING deaths < 1000