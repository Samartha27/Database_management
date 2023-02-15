SELECT DISTINCT F2.dest_city AS city
FROM Flights AS F1, Flights AS F2
WHERE F1.origin_city = 'Seattle WA'
AND F1.dest_city = F2.origin_city
AND F2.dest_city NOT IN (SELECT DISTINCT F.dest_city
            FROM Flights AS F
            WHERE F.origin_city = 'Seattle WA')
AND F2.dest_city != 'Seattle WA'
ORDER BY city ASC;

/*

Affected rows: 256

city           
---------------
Aberdeen SD    

Abilene TX     

Adak Island AK 

Aguadilla PR   

Akron OH       

Albany GA      

Albany NY      

Alexandria LA  

Allentown/Bethl
ehem/Easton PA 

Alpena MI      

Amarillo TX    

Appleton WI    

Arcata/Eureka C
A              

Asheville NC   

Ashland WV     

Aspen CO       

Atlantic City N
J              

Augusta GA     

Bakersfield CA 

Bangor ME      

Barrow AK      

Baton Rouge LA 

Beaumont/Port A
rthur TX       

Bemidji MN     

Bend/Redmond OR

Bethel AK      

Billings MT    

Binghamton NY  

Birmingham AL  

Bismarck/Mandan
 ND            

Bloomington/Nor
mal IL         

Bozeman MT     

Brainerd MN    

Bristol/Johnson
 City/Kingsport
 TN            

Brownsville TX 

Brunswick GA   

Buffalo NY     

Burlington VT  

Butte MT       

Carlsbad CA    

Casper WY      

Cedar City UT  

Cedar Rapids/Io
wa City IA     

Champaign/Urban
a IL




*/





















