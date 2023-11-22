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

--15) Calculate the difference in temperature on each day between the maximum (F) and minimum (F), 
--then sort your results to dicover on which date(s) this difference was largest.
SELECT DIFFERENCE (Max_Temperature_F, - Min_Temperature_F) AS DiffTemperature, 
FROM Seattle_weather_conditions
ORDER BY DiffTemperature DESC

--16) Summarise the average humidity per month (all years).
SELECT AVG 
FROM Seattle_weather_conditions

--17) Which month(s) in 2015 saw the highest max windspeed (not gusts) recorded?
SELECT Max_Wind_Speed_MPH, 
YEAR = 2015
FROM Seattle_weather_conditions

--18) On how many days were any weather events other than simply rain (storm, snow, fog, etc.) recorded?
SELECT Events
FROM Seattle_weather_conditions
WHERE Events IS NOT NULL 
AND (Events <> Rain)

--19) What was the total rainfall accumulation (inches) during the first 3 months of 2016?
SELECT 
YEAR = 2016
FROM Seattle_weather_conditions

--20) On how many individual dates was fog reported? 
SELECT *
FROM Seattle_weather_conditions
WHERE Events IS fog

