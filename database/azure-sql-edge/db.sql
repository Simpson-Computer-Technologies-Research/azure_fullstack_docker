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

/** Insert a sample record **/
IF NOT EXISTS (SELECT * FROM Users WHERE Id = 1)
BEGIN
    INSERT INTO Users (Id, Name, Age) VALUES (1, 'John Doe', 30);
END
GO