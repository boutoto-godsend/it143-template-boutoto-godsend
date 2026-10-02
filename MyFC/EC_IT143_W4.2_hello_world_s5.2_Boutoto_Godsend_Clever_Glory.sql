DROP TABLE IF EXISTS dbo.tblMyFC;
GO

CREATE TABLE dbo.tblMyFC
(
    p_id INT NOT NULL,
    [Number of players] INT NOT NULL,

    CONSTRAINT PK_tblMyFC PRIMARY KEY (p_id)
);
GO