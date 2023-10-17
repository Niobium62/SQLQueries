#Find the sum of the number of booster shots per WHO region 
SELECT WHO_REGION, sum(PERSONS_BOOSTER_ADD_DOSE) as num_of_booster_shots FROM covid.`vaccination-data`
	group by who_region