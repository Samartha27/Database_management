SELECT DISTINCT F.origin_city AS origin_city,
				F.dest_city AS dest_city,
				F.actual_time AS time
FROM Flights F, (SELECT origin_city, MAX(actual_time) AS max_time
				FROM Flights F
				GROUP BY origin_city) AS F2
WHERE F.actual_time = F2.max_time AND F.origin_city = F2.origin_city
ORDER BY origin_city, dest_city;

/*
Affected rows: 334

Sample_output:

origin_city      dest_city        time  
---------------  ---------------  ------
Aberdeen SD      Minneapolis MN   106   

Abilene TX       Dallas/Fort Wor  111   
                 th TX                  

Adak Island AK   Anchorage AK     471   

Aguadilla PR     New York NY      368   

Akron OH         Atlanta GA       408   

Albany GA        Atlanta GA       243   

Albany NY        Atlanta GA       390   

Albuquerque NM   Houston TX       492   

Alexandria LA    Atlanta GA       391   

Allentown/Bethl  Atlanta GA       456   
ehem/Easton PA                          

Alpena MI        Detroit MI       80    

Amarillo TX      Houston TX       390   

Anchorage AK     Barrow AK        490   

Appleton WI      Atlanta GA       405   

Arcata/Eureka C  San Francisco C  476   
A                A                      

Asheville NC     Chicago IL       279   

Ashland WV       Cincinnati OH    84    

Aspen CO         Los Angeles CA   304   

Atlanta GA       Honolulu HI      649   

Atlantic City N  Fort Lauderdale  212   
J                 FL                    

Augusta GA       Atlanta GA       176   

Austin TX        Atlanta GA       466   

Bakersfield CA   Houston TX       315   

Baltimore MD     Orlando FL       497   

Bangor ME        Newark NJ        390   

Barrow AK        Anchorage AK     118   

Baton Rouge LA   Atlanta GA       424   

Beaumont/Port A  Dallas/Fort Wor  102   
rthur TX         th TX                  

Bemidji MN       Minneapolis MN   104   

Bend/Redmond OR  Denver CO        188   

Bethel AK        Anchorage AK     95    

Billings MT      Chicago IL       180   

Binghamton NY    Cincinnati OH    132   

Birmingham AL    Atlanta GA       496   

Bismarck/Mandan  Dallas/Fort Wor  204   
 ND              th TX                  

Bloomington/Nor  Atlanta GA       417   
mal IL                                  

Boise ID         Denver CO        477   

Boston MA        Philadelphia PA  498


*/