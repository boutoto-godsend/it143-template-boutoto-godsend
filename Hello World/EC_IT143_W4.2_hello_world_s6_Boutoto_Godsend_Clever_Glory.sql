--Q: What is the highest salary in the dbo.Employee?

--A: Let's ask SQL Sever and find out ..



--1) Reload data

TRUNCATE TABLE dbo.EmployeeHighestSalary;

INSERT INTO dbo.EmployeeHighestSalary(EmployeeName, Salary)
	SELECT * FROM dbo.v_hello_world_load AS v;

--2) Review results

SELECT t.*
FROM dbo.EmployeeHighestSalary AS t;

