SELECT 
	s.name,
	status.station_id,
	COUNT(status.station_id) count
FROM 
	status
JOIN 
	stations s
ON 	
	s.station_id = status.station_id
WHERE 
	docks_available = 0
GROUP BY 1
ORDER by count DESC
LIMIT 10
