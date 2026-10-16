 create trigger trg_w3_schools_customers on dbo.t_w3_schools_customers
 after update 
 as 
 /*****************************************************************************************************************
NAME:    trg_w3_schools_customers
PURPOSE: last modified by triggers

MODIFICATION LOG:
Ver      Date        Author								Description
-----   ----------   -----------						-------------------------------------------------------------------------------
1.0     10/14/2022   Godsend Clever Glory Boutoto       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/
begin
	
	set nocount on;

	if trigger_nestlevel() > 1
        return;


	update dbo.t_w3_schools_customers
	set last_modified_by = suser_name()
	where CustomerID in 
	(
		select distinct CustomerID
		From inserted
	);

	end;
go

