create function udf_parse_last_name
(@v_combined_name as varchar(500)
)
returns varchar(100)


/*****************************************************************************************************************
NAME:    udf_parse_last_name
PURPOSE: Parse Last Name from combined name 

MODIFICATION LOG:
Ver      Date        Author								Description
-----   ----------   -----------						-------------------------------------------------------------------------------
1.0     10/14/2026   Boutoto Godsend Clever Glory        1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

begin
    declare @last_name as varchar(100);

    set @last_name =
        case
            when @v_combined_name is null then null
            when charindex(' ', rtrim(@v_combined_name)) = 0 then @v_combined_name
            else right(
                rtrim (@v_combined_name),
                charindex(
                    ' ',
                    reverse(rtrim(@v_combined_name))
                ) - 1
            )
        end;

    return @last_name;
end;
go 