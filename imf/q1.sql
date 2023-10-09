#Find me all countries with an inflation global rank <30 and an economic growth rank =< 30
SELECT 
    inf.countries,
    inflation_forecast,
    economic_growth_forecast,
    inf.global_rank AS 'inflation_global_rank',
    ec.global_rank AS 'economic_global_rank'
FROM
    imf.inflation_2023 AS inf
        INNER JOIN
    imf.economic_growth_2023 AS ec ON inf.countries = ec.countries
WHERE
    inf.global_rank <= 30
        AND ec.global_rank <= 30