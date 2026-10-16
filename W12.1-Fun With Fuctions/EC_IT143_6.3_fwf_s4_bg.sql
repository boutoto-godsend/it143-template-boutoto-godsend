--Q:How to extract firstname from Contact Name?

--A: Well, here is your problem...
--CustumerName = Alejandra Camino -> Alejandra

SELECT 
    t.ContactName,
    LEFT(t.ContactName, CHARINDEX(' ', t.ContactName + ' ') - 1) AS first_name
FROM dbo.t_w3_schools_customers AS t 
ORDER BY 1;