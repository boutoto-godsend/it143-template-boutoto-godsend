/*Question 1: Which department has the highest total amount of financial transactions for its members? 
I want to compare financial activity across departments using 
Family_Data.Department, Family_Data.Name, and Planet_Express.Amount, joined through the member name.
*/

--Answer 1:

select top(1)
	A.Department,
	sum(Amount) as Amount_of_financial_transactions
from dbo.Family_Data as A
join dbo.Planet_Express as B
	on A.Name=B.Card_Member
group by 
	A.Department
order by Amount_of_financial_transactions desc ;

/*Question 2:Which job titles have the highest total financial transaction amounts? 
This could help identify whether certain types of employees have higher financial activity by combining 
Family_Data.Job_Title, Family_Data.Name, Planet_Express.Card_Member, and Planet_Express.Amount.
*/

--Answer 2:

select  
    A.Job_Title,
    sum (B.Amount) as Total_Transaction_Amount
from dbo.Family_Data as A
inner join  dbo.Planet_Express as B
    on A.name = B.Card_Member
group by  
    A.Job_Title
	B
order by 
    Total_Transaction_Amount desc;

/*Question 3:How much money has each active employee spent through Planet Express transactions? 
This information would help managers understand financial activity among current employees by using 
Family_Data.Name, Family_Data.Status, Planet_Express.Card_Member, and Planet_Express.Amount.
*/

--Answer 3:

select
	A.Name,
	A.Status,
	sum (B.amount) as Total_per_employee
from dbo.Family_Data as A 
join dbo.Planet_Express as B
	on A.name=B.Card_Member
where A.status='active'
group by 
	A.Name,
	A.Status
order by 
	Total_per_employee desc;

/*Question 4 from Student Bruna Sousa
Which transaction Category has the highest total Amount in the Planet_Express table?
*/

--Answer 4:

select 
	category,
	sum(amount) as Total_amount
from dbo.Planet_Express
group by 
	category
order by Total_amount desc;
	










	

