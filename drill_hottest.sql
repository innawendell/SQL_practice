SELECT
	zip,
	date,
	max(MaxTemperatureF) max_tmp
FROM 
	weather