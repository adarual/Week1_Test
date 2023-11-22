--1) How many rows are in the Seattle_cycles_station table?
SELECT COUNT (*) AS NumberOfRows
FROM Seattle_cycles_station

--2) How many unique station IDs are there?
SELECT COUNT (DISTINCT station_id)
FROM Seattle_cycles_station

--3) Which cycle station (names) have been decommissioned?
SELECT name
FROM Seattle_cycles_station
WHERE decommission_date IS NULL

--4) In total, how many installed docks have been decommissioned?
SELECT COUNT (install_dockcount)
FROM Seattle_cycles_station
WHERE decommission_date IS NULL

--5) What was the earliest date and the latest date that cycle stations were installed?
SELECT 
MIN (install_date), MAX (install_date)
FROM Seattle_cycles_station

--6) How many unique trips are there overall? Does that number match the number of rows in the Seattle_cycles_trip table?
SELECT COUNT (DISTINCT trip_id) AS UniqueTrips, 
COUNT (*) AS NumberOfRows
FROM Seattle_cycles_trip

--7) What is the average trip duration in minutes? **
SELECT AVG (tripduration) AS avgtripduration
FROM Seattle_cycles_trip
WHERE tripduration = (tripduration * 60) 

--8) From which station did the largest number of individual trips begin? **
SELECT *
FROM Seattle_cycles_trip
GROUP BY from_station_name
HAVING 

--9) How many male members of the cycle hire scheme made trips in 2015? **
SELECT trip_id 
FROM Seattle_cycles_trip
WHERE (YEAR (starttime) = 2015, AND (usertype) = Member, AND (gender) = Male)


--10) How many rows do not have nulls for the column birthyear?
SELECT *
FROM Seattle_cycles_trip
WHERE birthyear IS NOT NULL 

--11) How old was the youngest rider that we know about?
SELECT MAX (birthyear)
FROM Seattle_cycles_trip

--12) How many total trips started and ended at the same station?
SELECT *
FROM Seattle_cycles_trip 
WHERE from_station_name = to_station_name

--13) How many unique bikes were rented per year by short term pass holders? **
SELECT *
FROM Seattle_cycles_trip
WHERE usertype LIKE ShortTermPass
YEAR 
GROUP BY usertype

--14) What is the earliest and latest dates we have in the Seattle_weather_conditions table?
SELECT 
MIN (date) AS earliest, 
MAX (date) AS latest
FROM Seattle_weather_conditions

--15) 

SELECT *
FROM Seattle_weather_conditions

SELECT *
FROM Seattle_cycles_trip

SELECT *
FROM Seattle_cycles_station
