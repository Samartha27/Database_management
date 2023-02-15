SELECT DISTINCT F_a.dest_city as city
FROM Flights F_a 
WHERE F_a.dest_city NOT IN (SELECT DISTINCT F2.dest_city
FROM FLIGHTS AS F1, FLIGHTS AS F2
WHERE F1.origin_city = 'Seattle WA'
AND F1.dest_city = F2.origin_city)
AND F_a.dest_city NOT IN (SELECT DISTINCT F.dest_city
            FROM Flights AS F
            WHERE F.origin_city = 'Seattle WA')
ORDER BY F_a.dest_city ASC;

/*

Affected rows: 3

city           
---------------
Devils Lake ND 

Hattiesburg/Laurel MS         

St. Augustine FL            




*/