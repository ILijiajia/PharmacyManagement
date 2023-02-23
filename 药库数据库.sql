USE master;
IF DB_ID('PharmacyBase') IS NOT NULL
	BEGIN
		ALTER DATABASE PharmacyBase
			SET SINGLE_USER
			WITH ROLLBACK IMMEDIATE;
		DROP DATABASE PharmacyBase;
	END
GO	
CREATE DATABASE PharmacyBase
	ON
		(NAME='Datafile'
		,FILENAME='D:\学校社区\学校\药库管理系统\药库管理系统数据库\DataFile.mdf')
	LOG ON
		(NAME='Logfile'
		,FILENAME='D:\学校社区\学校\药库管理系统\药库管理系统数据库\Logfile.ldf');

GO
use PharmacyBase
-------用户表
CREATE TABLE tb_User
	(No
		CHAR(10)
		NOT NULL
		PRIMARY KEY
	,Password
		VARBINARY(128)
		NOT NULL);
INSERT tb_User
	(No,Password)
	VALUES
	('3210707001',HASHBYTES('MD5','7001'));
