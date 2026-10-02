DROP VIEW IF EXISTS dbo.v_Simpsons
GO

CREATE VIEW dbo.v_Simpsons
AS


/*****************************************************************************************************************
NAME:    dbo.v_Simpsons
PURPOSE: Create the Simpsons view

MODIFICATION LOG:
Ver      Date        Author								Description
-----   ----------   -----------						-------------------------------------------------------------------------------
1.0     09/25/2026	 Boutoto Godsend Clever Glory       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/


SELECT
    Card_Member,
    SUM(Amount) AS TotalAmount
FROM Simpsons.dbo.Planet_Express
GROUP BY Card_Member;