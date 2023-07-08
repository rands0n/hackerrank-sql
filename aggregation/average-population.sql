-- Average Population
-- Query the average population for all cities in CITY, rounded down to the nearest integer.
-- https://www.hackerrank.com/challenges/average-population/problem

select round(avg(population))
from city
order by name asc;
