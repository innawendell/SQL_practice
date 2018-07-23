SELECT 
	host_name,
	neighbourhood,
	room_type,
	max(price) price,
	minimum_nights,
	number_of_reviews,
	availability_365
FROM 
	listings

	