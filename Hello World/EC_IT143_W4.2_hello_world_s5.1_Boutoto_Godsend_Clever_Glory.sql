--Q: What is the highest salary in the dbo.Employee?

--A: Let's ask SQL Sever and find out ...

SELECT *
INTO dbo.EmployeeHighestSalary 
FROM dbo.v_hello_world_load;