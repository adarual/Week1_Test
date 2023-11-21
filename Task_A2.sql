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

--7) What is the average trip duration in minutes?
SELECT AVG (tripduration) AS td
FROM Seattle_cycles_trip


SELECT *
FROM Seattle_cycles_trip

SELECT *
FROM Seattle_cycles_station
