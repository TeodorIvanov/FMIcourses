
USE ShipsNew;
----task1---
--CREATE TABLE CLASSES(
--  class VARCHAR(50) NOT NULL,
--	type CHAR(2),
--	country VARCHAR(50),
--	numGuns INT,
--	bore INT,
--	displacement INT,
--	CONSTRAINT cl_pk PRIMARY KEY (class)
--);


--CREATE TABLE SHIPS(
--	name VARCHAR(50),
--	class VARCHAR(50),
--	launched INT,
--  CONSTRAINT sh_pk PRIMARY KEY (name)
--);

--CREATE TABLE BATTLES(
--	name VARCHAR(50),
--	date VARCHAR(50),
--  CONSTRAINT ba_pk PRIMARY KEY(name)
--);

--CREATE TABLE OUTCOMES(
--	ship VARCHAR(50),
--	battle VARCHAR(50),
--	result VARCHAR(50),
--);


--adding foreign keys

--ALTER TABLE SHIPS
--ADD CONSTRAINT sh_cl_fk FOREIGN KEY (class) REFERENCES CLASSES(class);

--ALTER TABLE OUTCOMES
--ADD CONSTRAINT out_sh_fk FOREIGN KEY (ship) REFERENCES SHIPS(name);

--ALTER TABLE OUTCOMES
--ADD CONSTRAINT out_ba_fk FOREIGN KEY(battle) REFERENCES BATTLES(name);


--INSERT INTO Classes VALUES 
--('Bismarck','bb','Germany',8,15,42000),
--('Iowa','bb','USA',9,16,46000),
--('Kongo','bc','Japan',8,14,32000),
--('North Carolina','bb','USA',12,16,37000),
--('Renown','bc','Gt.Britain',6,15,32000),
--('Revenge','bb','Gt.Britain',8,15,29000),
--('Tennessee','bb','USA',12,14,32000),
--('Yamato','bb','Japan',9,18,65000);


--INSERT INTO Ships VALUES
--('California','Tennessee',1921),
--('Haruna','Kongo',1916),
--('Hiei','Kongo',1914),
--('Iowa','Iowa',1943),
--('Kirishima','Kongo',1915),
--('Kongo','Kongo',1913),
--('Missouri','Iowa',1944),
--('Musashi','Yamato',1942),
--('New Jersey','Iowa',1943),
--('North Carolina','North Carolina',1941),
--('Ramillies','Revenge',1917),
--('Renown','Renown',1916),
--('Repulse','Renown',1916),
--('Resolution','Renown',1916),
--('Revenge','Revenge',1916),
--('Royal Oak','Revenge',1916),
--('Royal Sovereign','Revenge',1916),
--('Tennessee','Tennessee',1920),
--('Washington','North Carolina',1941),
--('Wisconsin','Iowa',1944),
--('Yamato','Yamato',1941),
--('South Dakota','North Carolina',1941);

--INSERT INTO Battles VALUES
--('Guadalcanal','19421115 00:00:00.000'),
--('North Atlantic','19410525 00:00:00.000'),
--('North Cape','19431226 00:00:00.000'),
--('Surigao Strait','19441025 00:00:00.000');

--INSERT INTO Outcomes VALUES
--('California','Surigao Strait','ok'),
--('Kirishima','Guadalcanal','sunk'),
--('South Dakota','Guadalcanal','damaged'),
--('Tennessee','Surigao Strait','ok'),
--('Washington','Guadalcanal','ok'),
--('California','Guadalcanal','damaged');

--UPDATE Classes SET numGuns = 9, bore = 16, displacement = 34000 WHERE class = 'Kongo';
--UPDATE Ships SET launched = 1927 WHERE class = 'Kongo';


USE FLIGHTS;
----task2----
--ALTER TABLE Airlines
--ADD CONSTRAINT name_unique unique (name);

--ALTER TABLE Airplanes
--ADD CONSTRAINT airplane_seats CHECK( seats >= 0);

--ALTER TABLE Bookings
--ADD CONSTRAINT booking_check CHECK (booking_date <= flight_date);


--ALTER TABLE Customers
--ADD CONSTRAINT email_check CHECK (email LIKE '%@%' AND email LIKE '%.%' AND LEN(email) >= 6);

--ALTER TABLE Bookings
--ADD CONSTRAINT booking_status CHECK (status IN (0, 1));

--ALTER TABLE Flights
--ADD CONSTRAINT flight_duration_check CHECK (flight_duration >= 0);

--ALTER TABLE Airports
--ADD CONSTRAINT airports_unique UNIQUE (name, country);
