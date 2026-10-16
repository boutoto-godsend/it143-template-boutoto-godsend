--Q:How to extract firstname from Contact Name?

--A: Well, here is your problem...
--CustumerName = Alejandra Camino -> Alejandra


with s1 
	as (select t.ContactName 
	, left (t.ContactName, charindex(' ',t.Contactname + ' ') -1) as first_name
	, [dbo].[udf_parse_first_name](t.ContactName) as first_name2
	from dbo.t_w3_schools_customers as t)
	select s1.*
	from s1
	where s1.first_name <> s1.first_name2;