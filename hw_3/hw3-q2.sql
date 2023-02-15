SELECT DISTINCT F.origin_city AS city
FROM Flights F
WHERE F.origin_city NOT IN (SELECT origin_city 
				FROM Flights F
				WHERE actual_time >= 180)
AND F.canceled !=1
ORDER BY city ASC;


/*

Affected rows: 109

city
Aberdeen SD
Abilene TX
Alpena MI
Ashland WV
Augusta GA
Barrow AK
Beaumont/Port Arthur TX
Bemidji MN
Bethel AK
Binghamton NY
Brainerd MN
Bristol/Johnson City/Kingsport TN
Butte MT
Carlsbad CA
Casper WY
Cedar City UT
Chico CA
College Station/Bryan TX
Columbia MO
Columbus GA
Columbus MS
Cordova AK
Devils Lake ND
Dickinson ND
Dillingham AK
Dothan AL
Dubuque IA
Duluth MN
Durango CO
Eau Claire WI
Elko NV
\