ALTER SERVER ROLE [bulkadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [diskadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [processadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [serveradmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [setupadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO

USE [master]
GO
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM]
GO
USE [master]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
USE [master]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
USE [master]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
USE [master]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
USE [master]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
USE [master]
GO
ALTER ROLE [db_owner] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
USE [master]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
USE [master]
GO
ALTER ROLE [RSExecRole] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
use [master]
GO
GRANT ADMINISTER BULK OPERATIONS TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY AVAILABILITY GROUP TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY AVAILABILITY GROUP TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION  AS [sa]
GO
use [master]
GO
GRANT ALTER ANY CONNECTION TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY CREDENTIAL TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY DATABASE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY ENDPOINT TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY EVENT NOTIFICATION TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY EVENT SESSION TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY LINKED SERVER TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY LOGIN TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY SERVER AUDIT TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY SERVER ROLE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER RESOURCES TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER SERVER STATE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER SETTINGS TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER TRACE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT AUTHENTICATE SERVER TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONNECT ANY DATABASE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONNECT SQL TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONNECT SQL TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION  AS [sa]
GO
use [master]
GO
GRANT CONTROL SERVER TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE ANY DATABASE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE AVAILABILITY GROUP TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE DDL EVENT NOTIFICATION TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE ENDPOINT TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE SERVER ROLE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE TRACE EVENT NOTIFICATION TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT EXTERNAL ACCESS ASSEMBLY TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT IMPERSONATE ANY LOGIN TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT SELECT ALL USER SECURABLES TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT SHUTDOWN TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT UNSAFE ASSEMBLY TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW ANY DATABASE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW ANY DEFINITION TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW SERVER STATE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW SERVER STATE TO [NT AUTHORITY\SYSTEM] WITH GRANT OPTION  AS [sa]
GO