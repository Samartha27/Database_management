SELECT F.origin_city AS origin_city, ISNULL((SELECT COUNT(F2.fid)
                                            FROM FLIGHTS as F2
                                            WHERE F2.actual_time < 180 
											AND F2.canceled = 0
                                            AND F.origin_city = F2.origin_city
                                            GROUP BY F2.origin_city)* 100.0 /COUNT(*) ,0.0) AS percentage
FROM FLIGHTS AS F
GROUP BY origin_city
ORDER BY percentage, origin_city ASC;


/* 

Affected rows: 327

origin_city   percentage      
------------  ----------------
Guam TT       0.00000000000000        

Pago Pago TT  0.00000000000000              

Aguadilla PR  28.6792452830189

Anchorage AK  31.6562778272484

San Juan PR   33.5439168534746

Charlotte Am  39.2700729927007
alie VI                       

Ponce PR      40.3225806451613

Fairbanks AK  49.5391705069124

Kahului HI    53.3411833971151

Honolulu HI   54.5336955115768

San Francisc  55.2237084870849
o CA                          

Los Angeles   55.4127883447997
CA                            

Seattle WA    57.4109328256731

New York NY   60.5324373223055

Long Beach C  61.719979024646 
A                             

Kona HI       62.9527991218441

Newark NJ     63.3675652545999

Plattsburgh   64.0            
NY                            

Las Vegas NV  64.4710061799208

Christianste  64.6666666666667
d VI                          

Worcester MA  66.1290322580645

Philadelphia  66.3463751438435
 PA                           

San Diego CA  67.6109283748406

Boston MA     67.7996504461411

Portland OR   68.5609441634434

Lihue HI      68.9809630459127

Phoenix AZ    69.5476076062333

Miami FL      70.2249049115264

Minneapolis   75.747763791638 
MN                            

Fort Lauderd  75.9731763166503
ale FL                        

Washington D  76.1242146123228
C                             

Santa Ana CA  76.5823597380922

Latrobe PA    76.7123287671233

Houston TX    76.9010648777971

St. Augustin  76.9230769230769
e FL                          

Chicago IL    77.7677755500089

San Jose CA   79.5764654513699

Dallas/Fort   79.8162583518931
Worth TX                      

Oakland CA    79.926335174954 

Baltimore MD  80.352167613953 

Sacramento C  80.7554179566563
A                             
*/