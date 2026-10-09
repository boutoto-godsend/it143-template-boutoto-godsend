/*Question 1: Which player positions have the highest average salary? 
I want to compare salary levels across different positions 
by joining tblPlayerFact.mtd_salary with tblPlayerDim.pl_id and then using tblPositionDim.p_name 
to identify each player's position.
*/

----Answer 1:
select 
	A.p_id,
	A.p_name,
	avg (C.mtd_salary) as average_salary,
	count(distinct C.pl_id) as total_players
from dbo.tblPositionDim as A
join dbo.tblPlayerDim as B
	on A.p_id=B.p_id
join dbo.tblPlayerfact as C
	on B.pl_id=C.pl_id
group by 
	A.p_id,
	A.p_name
order by 
	average_salary desc;

/*Question 2:Which teams have the highest total player salaries? 
This information would help compare the salary costs of different teams by using tblPlayerFact.mtd_salary, tblPlayerDim.pl_id, tblPlayerDim.t_id, and tblTeamDim.t_code.
*/

--Answer 2:

select 
	A.t_id,
	A.t_code,
	sum(C.mtd_salary) as total_salary,
	count(distinct B.pl_id) as total_players
from dbo.tblTeamDim as A
join dbo.tblPlayerDim as B
	on A.t_id=B.t_id
join dbo.tblPlayerFact as C
	on B.pl_id=C.pl_id
group by 
	A.t_id,
	A.t_code
order by 
	total_salary desc;

/*Question 3:Who are the highest-paid players, and what positions do they play? 
I want to identify individual players with the highest salary amounts and understand their positions 
by combining tblPlayerFact.mtd_salary, tblPlayerDim.pl_name, tblPlayerDim.p_id, and tblPositionDim.p_name.
*/

--Answer 3:

select distinct top(10)
	B.pl_id,
	B.f_name,
	B.l_name,
	A.mtd_salary,
	C.p_name as position_name
from dbo.tblPlayerFact as A
join dbo.tblPlayerDim as B 
	on A.pl_id=B.pl_id
join dbo.tblPositionDim as C
	on B.p_id=C.p_id
order by 
	A.mtd_salary desc;

/*Question 4: from Walter John Casimir
Which players have a monthly salary of more than 10,000, and which team do they play for?
*/

--Answer 4:

select 
	A.pl_id,
	A.f_name,
	A.l_name,
	B.mtd_salary,
	C.t_code
from dbo.tblPlayerDim as A
join dbo.tblPlayerFact as B
	on A.pl_id=B.pl_id
join dbo.tblTeamDim AS C
    on A.t_id = C.t_id
where B.mtd_salary > 10000;



