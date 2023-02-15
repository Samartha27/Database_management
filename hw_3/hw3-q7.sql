SELECT DISTINCT C.name as carrier 
FROM Flights F, Carriers C
WHERE C.cid = F.carrier_id
AND F.origin_city = 'Seattle WA' 
AND F.dest_city = 'San Francisco CA'
ORDER BY C.name ASC;


/*

Affected rows: 4

carrier        
---------------
Alaska Airlines Inc.          

SkyWest Airlines Inc.         

United Air Lines Inc.         

Virgin America
*/