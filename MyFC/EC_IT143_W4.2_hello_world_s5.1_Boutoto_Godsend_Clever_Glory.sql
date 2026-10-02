--Q: How many players play each position?

--A: Let's ask SQL Server and find out ...

SELECT *
INTO dbo.tblMyFC
FROM dbo.v_MyFC;