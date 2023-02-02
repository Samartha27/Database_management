SELECT DISTINCT C.name as name
FROM Flights F, Carriers C
WHERE F.carrier_id = C.cid
GROUP BY F.day_of_month, C.name, F.day_of_week_id
HAVING COUNT(*) > 1000;


/*
Rows = 12

My output:

name                          
------------------------------
American Airlines Inc.        
Comair Inc.                   
Delta Air Lines Inc.          
Envoy Air                     
ExpressJet Airlines Inc.      
ExpressJet Airlines Inc. (1)  
JetBlue Airways               
Northwest Airlines Inc.       
SkyWest Airlines Inc.         
Southwest Airlines Co.        
US Airways Inc.               
United Air Lines Inc.

*/