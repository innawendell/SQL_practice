SELECT
	start_station,
	count(start_station) count
FROM 
	trips
GROUP BY 1
ORDER BY count DESC
