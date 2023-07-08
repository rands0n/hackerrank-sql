-- Earnings of Employees
-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

select (salary * months) AS max_earnings, count(*) AS employee_count
from employee
group by max_earnings
having max_earnings = max(salary * months)
order by max_earnings desc
limit 1;
