SELECT C.name as name, SUM(F.departure_delay) as delay
FROM Flights F, Carriers C
WHERE F.carrier_id = C.cid
GROUP BY C.name;

/*
Rows = 22

My output:

name                  delay     
--------------------  ----------
ATA Airlines d/b/a A  38676     
TA                              

AirTran Airways Corp  473993    
oration                         

Alaska Airlines Inc.  285111    

America West Airline  173255    
s Inc. (Merged with             
US Airways 9/05. Sto            
pped reporting 10/07            
.)                              

American Airlines In  1849386   
c.                              

Comair Inc.           282042    

Continental Air Line  414226    
s Inc.                          

Delta Air Lines Inc.  1601314   

Envoy Air             771679    

ExpressJet Airlines   934691    
Inc.                            

ExpressJet Airlines   483171    
Inc. (1)                        

Frontier Airlines In  165126    
c.                              

Hawaiian Airlines In  386       
c.                              

Independence Air      201418    

JetBlue Airways       435562    

Northwest Airlines I  531356    
nc.                             

SkyWest Airlines Inc  682158    
.                               

Southwest Airlines C  3056656   
o.                              

Spirit Air Lines      167894    

US Airways Inc.       577268    

United Air Lines Inc  1483777   
.                               

Virgin America        52597

*/