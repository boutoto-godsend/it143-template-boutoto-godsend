--Q1: How to keep track of when a record was last modifed?
--A1: This works for the initial INSERT

alter table dbo.t_w3_schools_customers
add last_modified_date datetime default getdate();

--Q2: How to keep track of when a record was last modified?