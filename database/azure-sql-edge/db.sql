/** Azure SQL Edge Database **/
USE master;
GO

/** Create an Users table if it does not exist **/
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Users')
BEGIN
    CREATE TABLE Users (
        Id INT PRIMARY KEY,
        Name NVARCHAR(50),
        Age INT
    );
END
GO