.mode column
.header ON


CREATE TABLE InsuranceCo(
name VARCHAR(100) PRIMARY KEY,
phone INT);

CREATE TABLE  Person(
ssn INT PRIMARY KEY,
name VARCHAR(40));

CREATE TABLE Vehicle(
  licensePlate VARCHAR(20) PRIMARY KEY,
  maxLiability REAL,
  year INT,
  insuraceCoName VARCHAR(100),
  owner INT,
  FOREIGN KEY (owner) REFERENCES Person(ssn)
  FOREIGN KEY(insuraceCoName) REFERENCES InsuranceCo(name)
);

CREATE TABLE Driver(
  driverID INT ,
  ssn INT PRIMARY KEY,
  FOREIGN KEY(ssn) REFERENCES Person(ssn)
);

CREATE TABLE NonProfessionalDriver(
  ssn INT PRIMARY KEY,
  FOREIGN KEY(ssn) REFERENCES Driver(ssn)
);

CREATE TABLE ProfessionalDriver(
  medicalHistory VARCHAR(200),
  ssn INT PRIMARY KEY,
  FOREIGN KEY(ssn) REFERENCES Driver(ssn)
);

CREATE TABLE Car(
  licensePlate VARCHAR(20),
  make VARCHAR(40),
  PRIMARY KEY(licensePlate)
  FOREIGN KEY(licensePlate) REFERENCES Vehicle(licensePlate)
);

CREATE TABLE Truck(
  capacity INT,
  licensePlate VARCHAR(20),
  ssn INT,
  PRIMARY KEY(ssn, licensePlate)
  FOREIGN KEY(ssn) REFERENCES ProfessionalDriver(ssn)
  FOREIGN KEY(licensePlate) REFERENCES Vehicle(licensePlate)
);

CREATE TABLE Drives(
	ssn INT,
	licensePlate VARCHAR(20),
	FOREIGN KEY(licensePlate) REFERENCES Vehicle(licensePlate)
	FOREIGN KEY(ssn) REFERENCES NonProfessionalDriver(ssn)
);

/*
2b.

The "insures" relationship is shown in the Vehicles table where the InsuranceCoName is represented as the FORIEGN KEY from the InsuranceCotable.
This is the representation since it is Many-to-One relationship from Vehicle to InsuranceCo and this is sufficient to reference and establish the relationship.



2c.
"Drives" is a Many-to-Many relationship and this requires a separate table to be setup to establish the relationship while "Operates" is a Many-to-One relationship 
and can reference the ssn in the table itself. For a many-to-many relationship, there is no single table which can represent all the attributes and need another table 
"Drives" to hold the relationship between Car and NonProfessionalDriver. In "Operates", the ProfessionalDrivers schema is sufficient to hold the 
attributes denoting a single professinal driver can drive one or many more trucks and a truck can only be operated at most by one professional driver.


*/

