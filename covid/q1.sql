#Select countries from vaccine metadata that are not present in vaccine data
SELECT 
    ISO3
FROM
    covid.`vaccination-metadata`
WHERE
    ISO3 NOT IN (SELECT 
					ISO3
				FROM
					covid.`vaccination-data`)