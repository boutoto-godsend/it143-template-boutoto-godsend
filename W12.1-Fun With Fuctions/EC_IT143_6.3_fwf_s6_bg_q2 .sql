--Q: How to extract last name from Contact Name 

--A: well, here is your problem 
--CustomerName = Alejandra Camino --> Camino

select t.ContactName
    , case
        when charindex(' ', t.ContactName) = 0 then t.ContactName
        else right(t.ContactName, charindex(' ', reverse(t.ContactName)) - 1)
end as last_name 
,dbo.udf_parse_last_name(t.ContactName) as last_name2
from dbo.t_w3_schools_customers as t
order by 1;


