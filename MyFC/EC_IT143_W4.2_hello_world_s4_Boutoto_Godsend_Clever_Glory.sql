DROP VIEW IF EXISTS dbo.v_MyFC;
GO

CREATE VIEW dbo.v_MyFC
AS

/*****************************************************************************************************************
NAME:    dbo.v_MyFC
PURPOSE: Create the My_FC view

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
    p_id,
    COUNT(pl_id) AS 'Number of players'
FROM dbo.tblPlayerDim
GROUP BY p_id;