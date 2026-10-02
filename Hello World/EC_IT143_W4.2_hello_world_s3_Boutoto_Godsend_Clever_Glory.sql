--Q: What is the highest salary in the dbo.Employee?

--A: Let's ask SQL Sever and find out ...

SELECT TOP(1) * FROM dbo.Employee
ORDER BY salary DESC;
