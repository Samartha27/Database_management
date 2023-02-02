SELECT C.name AS name,	
F1.flight_num AS f1_flight_num,
F1.origin_city AS f1_origin_city,
F1.dest_city AS f1_dest_city,
F1.actual_time AS f1_actual_time,
F2.flight_num AS f2_flight_num,
F2.origin_city AS f2_origin_city,
F2.dest_city AS f2_dest_city,
F2.actual_time AS f2_actual_time,
(F1.actual_time + F2.actual_time) AS actual_time
FROM Flights F1, Flights F2, Months M, Carriers C
WHERE F1.carrier_id = F2.carrier_id
AND F1.carrier_id = C.cid
AND F1.origin_city = "Seattle WA"
AND F1.dest_city = F2.origin_city
AND F2.dest_city = "Boston MA"
AND M.month = "July"
AND F1.day_of_month = 15
AND F2.day_of_month = F1.day_of_month
AND F1.month_id = M.mid 
AND F1.month_id = M.mid
AND (F1.actual_time + F2.actual_time) < 420;


/*

Row count = 1472
My output:


Southwest Ai  4575        Seattle WA  Chicag  233     5366    Chicago IL            Boston MA     148             381        
rlines Co.                            o IL                                                                                   

Southwest Ai  3035        Seattle WA  Milwau  214     117     Milwaukee WI          Boston MA     132             346        
rlines Co.                            kee WI                                                                                 

Southwest Ai  3035        Seattle WA  Milwau  214     3831    Milwaukee WI          Boston MA     135             349        
rlines Co.                            kee WI                                                                                 

Southwest Ai  5696        Seattle WA  Milwau  211     117     Milwaukee WI          Boston MA     132             343        
rlines Co.                            kee WI                                                                                 

Southwest Ai  5696        Seattle WA  Milwau  211     3831    Milwaukee WI          Boston MA     135             346        
rlines Co.                            kee WI                                                                                 

Southwest Ai  392         Seattle WA  St. Lo  219     392     St. Louis MO          Boston MA     152             371        
rlines Co.                            uis MO                                                                                 

Southwest Ai  392         Seattle WA  St. Lo  219     782     St. Louis MO          Boston MA     158             377        
rlines Co.                            uis MO                                                                                 

Southwest Ai  392         Seattle WA  St. Lo  219     4551    St. Louis MO          Boston MA     161             380        
rlines Co.                            uis MO                                                                                 
sqlite> 


*/
