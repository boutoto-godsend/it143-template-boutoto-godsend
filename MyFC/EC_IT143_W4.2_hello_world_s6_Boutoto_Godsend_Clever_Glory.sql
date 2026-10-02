--Q: How many players play each position?

--A: Let's ask SQL Server and find out ...

--1) Reload data 

TRUNCATE TABLE dbo.tblMyFC

INSERT INTO dbo.tblMyFC
	SELECT *
	FROM dbo.v_MyFC AS v;

--2) review results

SELECT t.*
	FROM dbo.tblMyFC AS t;