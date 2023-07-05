-- Type of Triangle

select
  case
    when A = B and B = C then "Equilateral"
    when A + B <= C then "Not A Triangle"
    when A + C <= B then "Not A Triangle"
    when B + C <= A then "Not A Triangle"
    when A = B and A <> C then "Isosceles"
    when A = C and A <> B then "Isosceles"
    when B = C and A <> B then "Isosceles"
    else "Scalene"
  end
from triangles;
