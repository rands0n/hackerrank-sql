-- Occupations
-- https://www.hackerrank.com/challenges/occupations/problem

select
    D.Name,
    P.Name,
    S.Name,
    A.Name
from (
    select @rownum:=@rownum+1 as rownum, Name
    from (select @rownum:=0) r,  Occupations
    where Occupation = 'Doctor'
    order by Name
) as D
right join (
    select @rownumP:=@rownumP+1 as rownumP, Name
    from (select @rownumP:=0) r, Occupations
    where Occupation = 'Professor'
    order by Name
) as P on D.rownum = P.rownumP
left join (
    select @rownumS:=@rownumS+1 AS rownumS, Name
    from (
        select @rownumS:=0) r, Occupations
        where Occupation = 'Singer'
        order by Name
    ) as S on P.rownumP = S.rownumS
left join (
    select @rownumA:=@rownumA+1 AS rownumA, Name
    from (
        select @rownumA:=0) r, Occupations
        where Occupation = 'Actor'
        order by Name
    ) as A on P.rownumP = A.rownumA;
