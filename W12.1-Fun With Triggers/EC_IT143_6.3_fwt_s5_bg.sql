--Q2: How to keep track of when a record was last modified?
--A2: Maybe use an alter update trigger

--Q3: Did it work?
--A3: Well, lets see...yup

--Remove stuff if it is already there
delete from dbo.t_w3_schools_customers
where ContactName in ('Maria Anders', 'Antonio Moreno', 'Thomas Hardy');

--Load test rows

insert into dbo.t_w3_schools_customers
    (CustomerID, CustomerName, ContactName, Address, City, Country)
values
    (101, 'Godsend Clever', 'Godsend',
     '19323 New York City', 'Dolisie', 'Congo');

--See if the trigger worked

select * from dbo.t_w3_schools_customers;

--Try it again 

update dbo.t_w3_schools_customers set ContactName ='Lionel Messi'
where ContactName='Francisco Chang';

--See if the trigger worked 

select * from dbo.t_w3_schools_customers;


