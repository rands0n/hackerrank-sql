-- Weather Observation Station 3
-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem

select distinct city from station where id % 2 = 0;
