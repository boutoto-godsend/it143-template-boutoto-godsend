CREATE PROCEDURE dbo.usp_MyFC
AS

/*****************************************************************************************************************
NAME:    dbo.usp_MyFC
PURPOSE: MyFC user strored procedure

MODIFICATION LOG:
Ver      Date        Author								Description
-----   ----------   -----------						-------------------------------------------------------------------------------
1.0     09/25/2026  Boutoto Godsend Clever Glory       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

	BEGIN
		--1) Reload data
		TRUNCATE TABLE dbo.tblMyFC;
		INSERT INTO dbo.tblMyFC
			SELECT *
		FROM dbo.v_MyFC AS v; 
		--2) Review results

		SELECT t.*
			FROM dbo.tblMyFC AS t;
	END
GO