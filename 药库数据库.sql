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
		,FILENAME='D:\ѧУ����\ѧУ\ҩ�����ϵͳ\ҩ�����ϵͳ���ݿ�\DataFile.mdf')
	LOG ON
		(NAME='Logfile'
		,FILENAME='D:\ѧУ����\ѧУ\ҩ�����ϵͳ\ҩ�����ϵͳ���ݿ�\Logfile.ldf');

GO
use PharmacyBase
-------�û���
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
