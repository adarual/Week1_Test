---1) Which station saw the highest trip volume?

--From which station (ID and name) were most cycle trips taken overall?
SELECT from_station_id, from_station_name
FROM Seattle_cycles_trip
WHERE 


--How many trips were taken from this station?


--How many unique bikes were borrowed from this station?


--What was the average trip duration from this station?


AS a
JOIN Seattle_cycles_trip AS b
ON a.from_station_id = b.from_station_id


SELECT *
FROM Seattle_cycles_station

SELECT *
FROM Seattle_cycles_trip