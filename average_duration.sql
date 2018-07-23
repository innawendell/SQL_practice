SELECT 
	end_station,
	AVG(duration) average_duration
FROM 
	trips
GROUP BY 1
ORDER BY average_duration DESC 