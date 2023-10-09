#Find the countries in unemployment rate table that have missing data in budget balance forecast table
select countries from imf.unemployment_rate_2023
where countries not in (select countries from imf.budget_balance_2023)