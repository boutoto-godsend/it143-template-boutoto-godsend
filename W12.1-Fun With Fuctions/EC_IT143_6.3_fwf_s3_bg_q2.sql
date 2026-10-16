--Q: How to extract last name from Contact Name 

--A: well, here is your problem 
--CustomerName = Alejandra Camino --> Camino

select t.ContactName
from dbo.t_w3_schools_customers as t
order by 1;