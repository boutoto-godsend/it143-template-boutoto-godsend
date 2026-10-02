DROP TABLE IF EXISTS dbo.t_Sympsons;
GO

CREATE TABLE dbo.t_Simpsons
(
    Card_Member VARCHAR(100) NOT NULL,
    TotalAmount DECIMAL(18,2) NOT NULL,

    CONSTRAINT PK_t_MyPlanetExpress
        PRIMARY KEY (Card_Member)
);
GO