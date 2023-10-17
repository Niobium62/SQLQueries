#Select vaccines that are used by at least 5 countries
SELECT 
    Vaccine_name, COUNT(*) AS num_of_countries
FROM
    covid.`vaccination-metadata`
GROUP BY Vaccine_name
HAVING COUNT(*) >= 5