SELECT 
	MinTemperatureF
FROM 
	weather
WHERE 
	PrecipitationIn > 0 OR
	PrecipitationIn like 'T' AND
	ZIP = 94301
ORDER BY MinTemperatureF  