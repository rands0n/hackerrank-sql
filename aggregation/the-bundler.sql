-- The Bundler
-- https://www.hackerrank.com/challenges/the-blunder/problem

select ceil(avg(salary) - avg(replace(cast(salary as char), "0", "")))
from employees
order by name asc;
