
DROP VIEW IF EXISTS dbo.v_hello_world_load;
GO

CREATE VIEW dbo.v_hello_world_load
AS

/*****************************************************************************************************************
NAME:    dbo.v_hello_world_load
PURPOSE: Create the Hello World - Load view

MODIFICATION LOG:
Ver      Date        Author								Description
-----   ----------   -----------						-------------------------------------------------------------------------------
1.0     09/24/2026   Boutoto Godsend Clever Glory		1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

SELECT TOP(1) * FROM dbo.Employee
ORDER BY salary DESC;
