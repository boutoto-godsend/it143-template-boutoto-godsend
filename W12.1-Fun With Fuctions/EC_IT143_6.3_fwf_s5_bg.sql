create function [dbo].[udf_parse_first_name]
(@v_combined_name as varchar(500)
)
returns varchar(100)
/*****************************************************************************************************************
NAME:    dbo.udf_parse_first_name
PURPOSE: Parse First Name combined name 

MODIFICATION LOG:
Ver      Date        Author							   Description
-----   ----------   -----------   `				   -------------------------------------------------------------------------------
1.0     10/13/2026   Godsend Clever Glory Boutoto      1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

	begin 
		declare @v_first_name as varchar(100);
		
		set @v_first_name = left(@v_combined_name, charindex(' ',@v_combined_name + ' ') - 1);

		return @v_first_name;

	end;

go

