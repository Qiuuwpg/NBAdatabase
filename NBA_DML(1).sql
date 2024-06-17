-- Filename: NBA_DML.sql
-- Description: DML file script to add all data to five tables
-- CST 8215
-- Author: Zhuyi Dai, Jianchao Jia
-- Year:2021
-- Last Modified: 4 Dec 2021

DELETE FROM Player_T;
DELETE FROM Team_T;
DELETE FROM Coach_T;
DELETE FROM Arena_T;
DELETE FROM City_T;

--add data to city table
--By Jianchao Jia 1 Dec 2021
insert into city_t (city_code,city_name,country_code) values('LA','Los Angeless','USA');
insert into city_t (city_code,city_name,Country_code) values('TO','Toronto','CAN');
insert into city_t (city_code,city_name,Country_code) values('SF','San Francisco','USA');
insert into city_t (city_code,city_name,Country_code) values('CLV','Cleveland','USA');
insert into city_t (city_code,city_name,Country_code) values('MI','Miami','USA');
insert into city_t (city_code,city_name,Country_code) values('SLC','Salt Like City','USA');
insert into city_t (city_code,city_name,Country_code) values('SAC','Sacramento','USA');
insert into city_t (city_code,city_name,Country_code) values('POR','Portland','USA');
insert into city_t (city_code,city_name,Country_code) values('BOS','Boston','USA');
insert into city_t (city_code,city_name,Country_code) values('NYC','New York City','USA');


--add data to arena table
--By Zhuyi Dai Dec 2021
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('Staples Centre',25000,1999);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('Scotia Bank',19800,1999);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('Chase Center',18064,2019);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('Rocket Mortgage Fieldhouse',19432,1994);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('FTX Arena',19600,1999);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('Vivint Arena',18306,1991);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('Golden 1 Center',17608,2016);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('Moda Center',19393,1995);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('TD Garden',18624,1995);
insert into Arena_t(Arena_name,seating_capacity,year_built) values ('Madison Square Garden',19812,1968);


--add data to coach table
--By Zhuyi Dai Dec 2021
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C001','Frank','Vogel');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C002','Nick','Nurse');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C003','Steve','Kerr');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C004','Larry','Drew');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C005','Erik','Spoelstra');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C006','Quin','Snyder');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C007','Alvin','Gentry');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C008','Chauncey','Billups');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C009','Ime','Udoka');
insert into Coach_t(coach_ID,coach_Fname,coach_Lname) values ('C010','Tom','Thibodeau');

--add data to team table
--By Jianchao Jia 1 Dec 2021
insert into team_t (team_code,team_name,city_code,coach_ID,Arena_name) values ('LAL','Lakers','LA','C001','Staples Centre');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('TOR','Raptors','TO','C002','Scotia Bank');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('GSW','warriors','SF','C003','Chase Center');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('CLE','Cavaliers','CLV','C004','Rocket Mortgage Fieldhouse');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('MIA','Heat','MI','C005','FTX Arena');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('UTA','Jazz','SLC','C006','Vivint Arena');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('SAC','King','SAC','C007','Golden 1 Center');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('POR','Trail Blazers','POR','C008','Moda Center');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('BOS','Celtics','BOS','C009','TD Garden');
insert into Team_t (team_code,team_Name,City_code,Coach_ID,Arena_name) values('NYK','Knicks','NYC','C010','Madison Square Garden');

--add data to player table
--By Jianchao Jia 1 Dec 2021
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p001','LAL','Kobe','Bryant',24,'SG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p002','LAL','Pau','Gasol',16,'PF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p003','LAL','Lamar','Odom',7,'PF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p004','TOR','Chris','Bosh',4,'PF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p005','TOR','Kawhi','Leonard',2,'SF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p006','TOR','Kyle','Lowry',7,'PG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p007','GSW','Stephen','Curry',30,'PG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p008','GSW','Klay','Thompson',11,'SG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p009','GSW','Andrew','Wiggins',22,'SF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p010','CLE','Lebron','James',23,'SF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p011','CLE','Kyrie','Irving',2,'G');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p012','CLE','Kevin','Love',0,'PF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p013','MIA','Chris','Bosh',1,'PF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p014','MIA','Dwyane','Wade',3,'SG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p015','UTA','Deron','Williams',8,'PG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p016','UTA','Carlos','Boozer',5,'PF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p017','UTA','Nikola','Jokić',15,'C');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p018','SAC','Tyreke','Evans',13,'PG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p019','SAC','Harrison','Barnes',40,'SF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p020','SAC','Terence','Davis',3,'G');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p021','POR','Brandon','Roy',7,'SG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p022','POR','LaMarcus','Aldridge',12,'SF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p023','POR','Damian','Lillard',0,'PG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p024','BOS','Kevin','Garnett',5,'PF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p026','BOS','Paul','Pierce',34,'SF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p027','BOS','Ray','Allen',20,'SG');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p028','NYK','Carmelo','Anthony',7,'SF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p029','NYK','Amare','Stoudemire',1,'PF');
insert into player_t(player_ID,team_code,player_fname,player_lname,player_number,player_position) values ('p030','NYK','Taj','Gibson',67,'F');

--eof: -- Filename: NBA_DML.sql




