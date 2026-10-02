--Q: How many players play each position?

--A: Let's ask SQL Server and find out ...

SELECT 
    p_id,
    COUNT(pl_id) AS 'Number of players'
FROM dbo.tblPlayerDim
GROUP BY p_id;