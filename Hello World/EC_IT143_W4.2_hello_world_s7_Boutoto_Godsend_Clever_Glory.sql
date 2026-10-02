CREATE PROCEDURE dbo.usp_hello_world_load
AS

/*****************************************************************************************************************
NAME:   dbo.usp_hello_world_load 
PURPOSE: Hello World - Load user stored procedure

MODIFICATION LOG:
Ver      Date        Author								Description
-----   ----------   -----------						-------------------------------------------------------------------------------
1.0     05/23/2022   Boutoto Godsend Clever Glory		1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

	BEGIN 
		--1) Reload data

		TRUNCATE TABLE dbo.EmployeeHighestSalary;
		INSERT INTO dbo.EmployeeHighestSalary
		(
			EmployeeName,
			Salary
		)
		SELECT v.EmployeeName,
			   v.salary
		FROM dbo.v_hello_world_load AS v;
		SELECT t.*
		FROM dbo.EmployeeHighestSalary AS t;
	END;
GO
