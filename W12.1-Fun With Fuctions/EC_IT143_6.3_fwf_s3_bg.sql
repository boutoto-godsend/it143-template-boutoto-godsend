--Q:How to extract firstname from Contact Name?

--A: Well, here is your problem...
--CustumerName = Alejandra Camino -> Alejandra

select t.ContactName
from dbo.t_w3_schools_customers as t
order by 1;