SELECT DISTINCT C.name as carrier 
FROM Carriers C,(SELECT F.carrier_id as carrier_id
				FROM Flights F
				WHERE F.origin_city = 'Seattle WA' 
					AND F.dest_city = 'San Francisco CA') AS F1
WHERE C.cid = F1.carrier_id
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