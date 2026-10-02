--Q: What is the total amount spent by each card member?

--A: Let's ask SQL Server and found it...


--1) Reload data

TRUNCATE TABLE  dbo.t_Simpsons;

INSERT INTO  dbo.t_Simpsons
		SELECT * 
		FROM dbo.v_Simpsons;
GO

--2) Review results

SELECT *
FROM dbo.t_Simpsons;