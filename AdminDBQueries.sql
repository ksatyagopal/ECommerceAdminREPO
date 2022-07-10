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
	ChangesMade VARCHAR(MAX),
	ChangedTime varchar(50),
	Reason NVARCHAR(MAX)
)


use ECommerceAdminDB
select * from Admins
select * from Contributions
--delete from Admins where AdminId = 12466

update Admins
set IsLoggedIn =0, IsLocked = 0, UnSuccessfulAttempts=0