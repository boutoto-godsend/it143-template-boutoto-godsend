CREATE PROCEDURE dbo.usp_Simpsons
AS


/*****************************************************************************************************************
NAME:    dbo.usp_Simpsons
PURPOSE: Simpson user storred procedure

MODIFICATION LOG:
Ver      Date        Author									Description
-----   ----------   -----------						   -------------------------------------------------------------------------------
1.0     09/26/2026	 Boutoto Godsend Clever Glory	       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
*******************************************************************************************************************************************/


	
	BEGIN
		--1) Reload data

		TRUNCATE TABLE dbo.t_Simpsons;

		INSERT INTO dbo.t_Simpsons
				SELECT *
				FROM dbo.v_Simpsons;

		--2) Review results

		SELECT*
		FROM dbo.t_Simpsons;

	END;
GO