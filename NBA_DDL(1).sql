-- Filename: NBA_DDL.sql
-- Description: DDL file to create all five tables: city, arena, player, team and coach and two views
-- CST 8215
-- Author: Zhuyi Dai, Jianchao Jia
-- Year:2021
-- Last Modified: 4 Dec 2021

DROP VIEW IF EXISTS lakers_player;
DROP VIEW IF EXISTS Cavs_player;
DROP TABLE IF EXISTS Player_T;
DROP TABLE IF EXISTS Team_T;
DROP TABLE IF EXISTS Arena_T;
DROP TABLE IF EXISTS Coach_T;
DROP TABLE IF EXISTS City_T;

--By Zhuyi Dai Dec 2021
CREATE TABLE City_T(
	City_Code VARCHAR(3) PRIMARY KEY,
	City_Name VARCHAR(20) NOT NULL,
	Country_code CHAR(3) NOT NULL
);

CREATE TABLE Arena_T(
	Arena_name VarCHAR(40) PRIMARY KEY,
	Seating_capacity int NOT NULL,
	Year_built INT Not Null
);

CREATE TABLE Coach_T(
	Coach_ID CHAR(4) PRIMARY KEY,
	Coach_Fname VARCHAR(20) NOT NULL,
	Coach_Lname VARCHAR(20) NOT NULL
		
);
CREATE TABLE Team_T(
	Team_Code CHAR(3) PRIMARY KEY,
	Team_Name VARCHAR(20) NOT NULL,
	City_Code CHAR(3) NOT NULL,
	Coach_ID CHAR(4) NOT NULL,
	Arena_name varchar(40),
	CONSTRAINT Team_FK1 FOREIGN KEY (City_Code) REFERENCES City_T(City_Code),
	CONSTRAINT Team_FK2 FOREIGN KEY (Coach_ID) REFERENCES Coach_T(Coach_ID),
	CONSTRAINT Team_FK3 FOREIGN KEY (Arena_name) REFERENCES Arena_T(Arena_name)
);




CREATE TABLE Player_T(
	Player_ID CHAR(4) PRIMARY KEY,
	Team_Code CHAR(3) NOT NULL,
	Player_Fname VARCHAR(20) NOT NULL,
	Player_Lname VARCHAR(20) NOT NULL,
	Player_Number INT NOT NULL,
	Player_Position VARCHAR(5) NOT NULL,
	CONSTRAINT Player_FK1 FOREIGN KEY (Team_Code) REFERENCES Team_T(Team_Code)
);

--Create two views for players in team lakers and cavaliers
--By Jianchao Jia 1 Dec 2021
CREATE view lakers_player
AS
select * from player_T where Team_code = 'LAL';

CREATE view Cavs_player
AS
select * from player_T where Team_code = 'CLE';

--eof: NBA_DDL.sql