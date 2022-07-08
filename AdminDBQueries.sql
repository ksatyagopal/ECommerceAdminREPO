--Create database ECommerceAdminDB

use ECommerceAdminDB


-- Admins Table
CREATE TABLE Admins(
	AdminID INT PRIMARY KEY IDENTITY(12345,11),
	AdminName VARCHAR(50),
	EMail varchar(50),
	Mobile bigint,
	IsSuperAdmin BIT,
	LastLoggedIn varchar(25),
	Password nVARCHAR(max),
	IsLoggedIn BIT,
	IsDeleted BIT,
	IsLocked BIT,
	UnSuccessfulAttempts INT
)


--Contributions Table
CREATE TABLE Contributions(
	CID INT PRIMARY KEY IDENTITY(1,1),
	ChangeMadeBy INT FOREIGN KEY REFERENCES Admins(AdminID),
	Reference VARCHAR(30),
	ChangesMade VARCHAR(30),
	ChangedTime varchar(50),
	Reason NVARCHAR(MAX)
)

select * from Admins
--delete from Admins

update Admins
set IsLoggedIn = 0