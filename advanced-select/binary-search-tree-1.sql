-- Binary Tree Nodes
-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem

select n,
  case
      when p is null then 'Root'
      when (select count(*) from bst as child where child.p = father.n) > 0 then 'Inner'
      else 'Leaf'
  end
from bst as father
order by n;
