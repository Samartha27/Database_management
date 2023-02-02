SELECT C.name as carrier, MAX(F.Price) as max_price
FROM Flights F, Carriers C
WHERE F.carrier_id = C.cid
AND ((F.origin_city = "New York NY" AND  F.dest_city = "Seattle WA") OR
(F.origin_city = "Seattle WA" AND  F.dest_city = "New York NY"))
GROUP BY C.name;

/*
Rows = 3

My output:

carrier               max_price 
--------------------  ----------
American Airlines In  991       
c.                              

Delta Air Lines Inc.  999       

JetBlue Airways       996   
*/