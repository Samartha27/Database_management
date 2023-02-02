SELECT C.name as name, SUM(f.canceled = 1)*100.0/COUNT(*) as percentage
FROM Flights F, Carriers C
WHERE F.carrier_id = C.cid 
AND F.origin_city = "Seattle WA"
GROUP BY C.name
HAVING percentage > 0.5
ORDER BY percentage ASC;


/*
Rows = 6

My output:

name                  percentage          
--------------------  --------------------
SkyWest Airlines Inc  0.728291316526611   
.                                         

Frontier Airlines In  0.840336134453782   
c.                                        

United Air Lines Inc  0.983767830791933   
.                                         

JetBlue Airways       1.00250626566416    

Northwest Airlines I  1.4336917562724     
nc.                                       

ExpressJet Airlines   3.2258064516129     
Inc.                                    
*/