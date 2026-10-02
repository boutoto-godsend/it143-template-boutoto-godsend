--Q: What is the total amount spent by each card member?

--A: Let's ask SQL Server and found it...

SELECT
    Card_Member,
    SUM(Amount) AS TotalAmount
FROM Simpsons.dbo.Planet_Express
GROUP BY Card_Member;