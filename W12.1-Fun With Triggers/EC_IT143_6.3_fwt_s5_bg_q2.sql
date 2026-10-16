--Q2: How to keep track of who last modifed a record/
--A2: This works for server user and the initial INSERT...

--Create an AFTER UPDATE trigger that sets
--last_modified_date to the current date and time


--Q3: Did it works?
--A3: Well, let's see...yup

--Remove stuff if it is alredy there

delete from dbo.t_w3_schools_customers
where CustomerID in (2,90);

--Load test rows 

insert into dbo.t_w3_schools_customers(CustomerID, CustomerName, Contactname, Address, City, Country)
values (1001,'Jean Francky Esteban Le Paul', 'Jean Francky', 'n2 rue les allouettes', 'Nkayi', 'Congo')

--See if the triggers worked 

select * from dbo.t_w3_schools_customers;

--Try it again 

update dbo.t_w3_schools_customers set CustomerID= 1002
where CustomerID = 7;

--See if the trigger worked 

select * from dbo.t_w3_schools_customers;

