create trigger trg_hello_world_last_mod on dbo.t_w3_schools_customers
after update 
as

/*****************************************************************************************************************
NAME:    dbo.trg_hello_world_last_mod
PURPOSE: Hello world - Last Modified By Trigger

MODIFICATION LOG:
Ver      Date        Author							   Description
-----   ----------   -----------					   -------------------------------------------------------------------------------
1.0     10/13/2026	 Godsend Clever Glory Boutoto      1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

	update dbo.t_w3_schools_customers
		set
			last_modified_date = getdate()
		where ContactName in 
		(
			select distinct
				ContactName
			from Inserted
		);
