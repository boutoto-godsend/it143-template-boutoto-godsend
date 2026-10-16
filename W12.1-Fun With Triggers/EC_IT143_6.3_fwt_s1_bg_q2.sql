--Q2: How to keep track of who last modifed a record/
--A2: This works for server user and the initial INSERT...

alter table dbo.t_w3_schools_customers
add last_modified_by varchar(50) default suser_name()
