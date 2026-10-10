SELECT City, StateProvinceID, PostalCode
FROM Person.Address AS a
JOIN Person.BusinessEntityAddress AS ba
    ON a.AddressID = ba.AddressID
JOIN Person.Person AS p
    ON ba.BusinessEntityID = p.BusinessEntityID
WHERE p.FirstName LIKE 'K%'
  AND StateProvinceID = 9;

  /*
Missing Index Details from SQLQuery11.sql - localhost.AdventureWorks2022 (DESKTOP-2CMIOOV\Godsend  Desktop (52))
The Query Processor estimates that implementing the following index could improve the query cost by 18.1808%.
*/


USE [AdventureWorks2022]
GO
CREATE NONCLUSTERED INDEX [<Name of Missing Index, sysname,>]
ON [Person].[Person] ([FirstName])

GO
