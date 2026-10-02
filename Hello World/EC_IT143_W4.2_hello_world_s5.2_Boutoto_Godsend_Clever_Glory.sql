DROP TABLE IF EXISTS dbo.EmployeeHighestSalary;
GO

CREATE TABLE dbo.EmployeeHighestSalary
(
    EmployeeHighestSalaryID INT IDENTITY(1,1) NOT NULL,
    EmployeeName VARCHAR(20) NOT NULL,
    Salary INT NOT NULL,

    CONSTRAINT PK_EmployeeHighestSalary
        PRIMARY KEY (EmployeeHighestSalaryID)
);
GO