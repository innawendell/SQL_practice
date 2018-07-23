SELECT 
	COUNT(c.listing_id) count,
	l.neighbourhood
FROM 
	calendar c
JOIN 
	listings l
ON
	l.id = c.listing_id
WHERE 
	c.available = 'f'
GROUP BY 2
ORDER BY count DESC 
LIMIT 10