-- Weather Observation Station 7
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

select distinct city
from station
where right(city, 1) in ('a', 'e', 'i', 'o', 'u');
