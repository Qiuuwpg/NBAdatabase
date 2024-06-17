-- Filename: NBASQLStatement.sql
-- Description: SQL file to test all the required sql queries
-- CST 8215
-- Author: Zhuyi Dai, Jianchao Jia
-- Year:2021
-- Last Modified: 4 Dec 2021

--use natural join to inverse 3NF to 1NF to show all the data in one table.
--By Zhuyi Dai 30 Nov 2021
SELECT Player_Fname,Player_Lname,player_position,player_number,Team_name, Team_code, Coach_fname,Coach_lname,Coach_ID,City_code,City_name, arena_name
From Team_T
Natural Join City_t
Natural join arena_t
Natural Join player_t
Natural join coach_t;
--create metadata
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE
TABLE_NAME = 'city_t' OR
TABLE_NAME = 'arena_t' OR
TABLE_NAME = 'player_t' OR
TABLE_NAME = 'team_t' OR
TABLE_NAME = 'coach_t';
--use select where statement to find the player who plays as Score guard position and show their names and team codes.
--By Zhuyi Dai 30 Nov 2021
Select Player_fname, Player_lname, Team_code
From Player_t
Where player_position = 'SG';
--use select where statement to find the arena which has over 19000 seats for people to watch NBA games
Select Arena_name, seating_capacity
FROM Arena_t
Where seating_Capacity > 19000;
--use select where statement to find the team which is coached by "nick nurse" with coach id "C002"
Select Team_Name,Team_Code,City_code
FROM Team_T
Where Coach_id='C002';
--use between clause to filter arena table where the seating capacity is between 17000 and 19000
SELECT Arena_Name, Seating_Capacity,Year_built
From Arena_t
Where seating_capacity between 17000 and 19000;
--use subquery to find the arena whose building year is ealier than staples center
Select Arena_name, year_built 
From Arena_T 
where year_built<(Select year_built FROM Arena_T Where Arena_name='Staples Centre');
--use UNION to see what the number players choose from two specific teams
SELECT Player_number
FROM Player_T
Where Team_code = 'LAL'
UNION
SELECT Player_number
FROM Player_T
Where Team_code = 'MIL';

--left join to identify the team in city Boston and right join to identify the team and arena in Toronto
--By Jianchao Jia 1 Dec 2021
select City_name,country_code, team_name from City_t right join team_t ON (city_t.city_code=team_t.city_code)
where city_name = 'Boston';
select team_code,team_name,coach_id,arena_name from team_t left join city_t ON (city_t.city_code=team_t.city_code)
where city_name = 'Toronto';


-- eof: NBASQLStatement.sql
