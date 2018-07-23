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
	t.start_date,
	t.start_station,
	t.end_station,
	duration
FROM 
	trips t
JOIN 
	rainy r
ON 
	date(t.start_date) =r.Date
ORDER BY duration DESC 
LIMIT 1