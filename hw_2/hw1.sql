.mode column
.mode csv

CREATE TABLE Payroll (
  UserID INT PRIMARY KEY,
  Name VARCHAR(256),
  Job VARCHAR(256),
  Salary INT);

SELECT P.Name, P.UserID
  FROM Payroll AS P
 WHERE P.Job = ‘TA’;



CREATE TABLE Edges(
Source INT,
Destination INT);

INSERT INTO Edges
VALUES (10,5), (6,25), (1,3), (4,4);

SELECT * FROM Edges;
SELECT Source FROM Edges;
SELECT * FROM Edges
WHERE Source > Destination;

INSERT INTO Edges
VALUES ('-1','2000');







CREATE TABLE MyRestaurants (
Name VARCHAR(256),
FoodType VARCHAR(256),
TimeFromHouse INT,
LastVistedDate VARCHAR(10),
ILike INT);

INSERT INTO MyRestaurants
VALUES ('CEDARS', 'Indian', 50, '2021-03-14', 1);
INSERT INTO MyRestaurants
VALUES ('JEWEL', 'Italian', 40, '2022-05-23', 0);
INSERT INTO MyRestaurants
VALUES ('ORANGE', 'French', 45, '2020-06-25', 1);
INSERT INTO MyRestaurants
VALUES ('SAMMYs', 'Breakfast', 30, '2019-08-12', 0);
INSERT INTO MyRestaurants
VALUES ('MOD PIZZA', 'Pizza', 15, '2023-01-11',NULL);
INSERT INTO MyRestaurants
VALUES ('SAMMY', 'Breakfast', 10, '2019-08-12', 1);
INSERT INTO MyRestaurants
VALUES ('SAM', 'Breakfast', 10, '2019-08-12', 0);
INSERT INTO MyRestaurants
VALUES ('SA', 'Breakfast', 10, '2022-12-12', 0);
INSERT INTO MyRestaurants
VALUES ('S', 'Breakfast', 10, '2022-12-12', 1);

SELECT * FROM MyRestaurants;

SELECT Name,TimeFromHouse FROM MyRestaurants WHERE TimeFromHouse < 20 
ORDER BY Name ASC;

SELECT Name FROM MyRestaurants WHERE ILike = TRUE AND date(LastVistedDate) < date('now', '-3 months');

SELECT Name FROM MyRestaurants WHERE TimeFromHouse <= 10;















