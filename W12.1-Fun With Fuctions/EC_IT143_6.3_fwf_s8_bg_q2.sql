--Q: How to extract last name from Contact Name 

--A: well, here is your problem 
--CustomerName = Alejandra Camino --> Camino

select t.CustomerID
, t. CustomerName
, t. ContactName
, dbo.udf_parse_first_name(t.ContactName)  ContactName_first_name
, dbo.udf_parse_last_name(t.ContactName) as ContactName_last_name -- How to extract last name from Contact Name?
, t. Address
,t. City
,t. Country
from dbo.t_w3_schools_customers as t
order by 3;