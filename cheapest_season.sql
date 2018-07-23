SELECT 
	AVG(SUBSTR(price, 2)) average_price,
	(CASE WHEN strftime('%m', c.Date) in ('12', '01', '02') THEN 'winter'
	WHEN strftime('%m', c.Date) in ('03', '04', '05') THEN 'spring'
	WHEN strftime('%m', c.Date) in ('06', '07', '08') THEN 'summer'
	ELSE 'fall' END) as season
FROM 
	calendar c
GROUP BY 2
ORDER BY average_price 
		
	
	