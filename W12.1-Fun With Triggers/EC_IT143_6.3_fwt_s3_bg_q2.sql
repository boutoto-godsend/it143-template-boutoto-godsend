--Q2: How to keep track of who last modifed a record/
--A2: This works for server user and the initial INSERT...


--Create an AFTER UPDATE trigger that sets
--last_modified_date to the current date and time

--alter table dbo.t_w3_schools_customers
--add last_modified_by varchar(50) default suser_name()

 -- https://stackoverflow.com/questions/4574010/how-to-create-trigger-to-keep-track-of-last-changed-data



