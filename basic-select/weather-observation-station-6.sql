-- Weather Observation Station 6
-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-6

select distinct city
from station
where left(city, 1) in ('a', 'e', 'i', 'o', 'u');
