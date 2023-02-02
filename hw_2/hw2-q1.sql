
SELECT DISTINCT F.flight_num AS flight_num
FROM Flights F, Carriers C, Weekdays W
WHERE W.did = F.day_of_week_id
AND C.cid = F.carrier_id
AND C.name = "Alaska Airlines Inc."
AND F.origin_city = "Seattle WA"
AND F.dest_city = "Boston MA"
AND W.day_of_week = "Monday";


/*

MY OUTPUT:

NUMBER OF ROWS IN THE QUESRY RESULT = 3

flight_num
12
24
734
*/
