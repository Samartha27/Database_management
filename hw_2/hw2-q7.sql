SELECT SUM(F.capacity) as capacity
FROM Flights F, Months M
WHERE ((F.origin_city = 'San Francisco CA' AND F.dest_city = 'Seattle WA') 
	OR (F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA'))
	AND F.month_id = M.mid
	AND M.month = "July"
	AND F.day_of_month = 10;
/* 

Rows = 1

My output:

capacity  
----------
680       

*/
