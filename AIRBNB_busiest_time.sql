SELECT 
	(CASE WHEN strftime('%m', c.Date) in ('12', '01', '02') THEN 'winter'
	WHEN strftime('%m', c.Date) in ('03', '04', '05') THEN 'spring'
	WHEN strftime('%m', c.Date) in ('06', '07', '08') THEN 'summer'
	ELSE 'fall' END) as season,
	COUNT(c.available) booked
FROM 
	calendar c
WHERE
	c.available = 'f'	
GROUP BY 1
ORDER by booked DESC 