/* 4.1 */


DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales(
	name VARCHAR(50),
	discount VARCHAR(50),
	month VARCHAR(50),
	price INT
	);

.separator \t
.header on
.import --skip 1 ./mrFrumbleData.txt Sales

/* 4.2 */

/*  name -> discount  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.name = S2.name
AND S1.discount != S2.discount;
/* 
COUNT(*)
3286 
Functional dependency does not exists
*/


/*  name -> price  */
SELECT COUNT(DISTINCT(S1.name)) as distinct_name
FROM Sales S1, Sales S2
WHERE S1.name = S2.name
AND S1.price != S2.price;
/* 
distinct_name
0 
Functional dependency exists
*/

/*  discount -> price  */
SELECT COUNT(DISTINCT(S1.name)) as distinct_name
FROM Sales S1, Sales S2
WHERE S1.discount = S2.discount
AND S1.price != S2.price;
/* 
distinct_name
36
Functional dependency does not exist
*/

/*  month -> discount  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.month = S2.month
AND S1.discount != S2.discount;
/* 
COUNT(*)
0 
Functional dependency exists
*/

/*  month -> price  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.month = S2.month
AND S1.price != S2.price;
/* 
COUNT(*)
13208 
Functional dependency does not exist
*/

/*  name -> month  */
SELECT COUNT(DISTINCT(S1.name)) as distinct_name
FROM Sales S1, Sales S2
WHERE S1.name = S2.name
AND S1.month != S2.month;
/* 
distinct_name
36 
Functional dependency does not exists
*/
 


/*  month -> discount,price  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.month = S2.month
AND S1.discount != S2.discount
AND S1.price != S2.price;
/* 
COUNT(*)
0 
Functional dependency exists
*/

/*  month -> discount,name  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.month = S2.month
AND S1.discount != S2.discount
AND S1.name != S2.name;
/* 
COUNT(*)
0 
Functional dependency exists
*/

/*  name -> discount,price  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.name = S2.name
AND S1.discount != S2.discount
AND S1.price != S2.price;
/* 
COUNT(*)
0 
Functional dependency exists
*/


/*  name -> month,price  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.name = S2.name
AND S1.month != S2.month
AND S1.price != S2.price;
/* 
COUNT(*)
0 
Functional dependency exists
*/

/*  name -> month,price,discount  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.name = S2.name
AND S1.month != S2.month
AND S1.discount != S2.discount
AND S1.price != S2.price;
/* 
COUNT(*)
0 
Functional dependency exists
*/

/*  month -> name,price,discount  */
SELECT COUNT(*)
FROM Sales S1, Sales S2
WHERE S1.month = S2.month
AND S1.name != S2.name
AND S1.discount != S2.discount
AND S1.price != S2.price;
/* 
COUNT(*)
0 
Functional dependency exists
*/

/* 4.3 */
CREATE TABLE Sales1(
	name VARCHAR(50) PRIMARY KEY,
	price INT);

CREATE TABLE Sales2(
	month VARCHAR(50) PRIMARY KEY,
	discount VARCHAR(50));

/* 4.4 */

INSERT INTO Sales1
SELECT DISTINCT S.name, S.price 
FROM Sales S;

INSERT INTO Sales2
SELECT DISTINCT S.month, S.discount
FROM Sales S;

SELECT COUNT(*)
FROM Sales1;
/* 
COUNT(*)
36
*/

SELECT COUNT(*)
FROM Sales2;
/* 
COUNT(*)
12
*/