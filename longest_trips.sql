WITH 
	rainy
AS (
	SELECT 
		Date
	FROM 
		weather
		
	WHERE 
		PrecipitationIn > 0 OR
		PrecipitationIn LIKE 'T'
	GROUP BY 1
	ORDER BY Date
)
SELECT 
	duration,
	trip_id
FROM 	
	trips_abbr ta
JOIN 
	rainy r
ON 
	r.Date = date(ta.start_date)
ORDER BY duration DESC 
LIMIT 3
