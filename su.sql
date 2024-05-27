USE [master]
GO
CREATE LOGIN [mesa] WITH PASSWORD=N'FMMATEAMSQLFAV8', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [mesa]
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [mesa]
GO
ALTER SERVER ROLE [diskadmin] ADD MEMBER [mesa]
GO
ALTER SERVER ROLE [processadmin] ADD MEMBER [mesa]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [mesa]
GO
ALTER SERVER ROLE [serveradmin] ADD MEMBER [mesa]
GO
ALTER SERVER ROLE [setupadmin] ADD MEMBER [mesa]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [mesa]
GO
USE [master]
GO
CREATE USER [mesa] FOR LOGIN [mesa]
GO
USE [master]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [mesa]
GO
USE [master]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [mesa]
GO
USE [master]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mesa]
GO
USE [master]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mesa]
GO
USE [master]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [mesa]
GO
USE [master]
GO
ALTER ROLE [db_owner] ADD MEMBER [mesa]
GO
USE [master]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [mesa]
GO
USE [master]
GO
ALTER ROLE [RSExecRole] ADD MEMBER [mesa]
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[diskadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[diskadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[diskadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[diskadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[bulkadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[bulkadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[bulkadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[bulkadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[dbcreator] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[dbcreator] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[dbcreator] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[dbcreator] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[processadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[processadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[processadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[processadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[sysadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[sysadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[sysadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[sysadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[securityadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[securityadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[securityadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[securityadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[setupadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[setupadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[setupadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[setupadmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[public] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[public] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[public] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[public] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ON SERVER ROLE::[serveradmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL ON SERVER ROLE::[serveradmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT TAKE OWNERSHIP ON SERVER ROLE::[serveradmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW DEFINITION ON SERVER ROLE::[serveradmin] TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ADMINISTER BULK OPERATIONS TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY AVAILABILITY GROUP TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY CONNECTION TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY CREDENTIAL TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY DATABASE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY ENDPOINT TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY EVENT NOTIFICATION TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY EVENT SESSION TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY LINKED SERVER TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY LOGIN TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY SERVER AUDIT TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER ANY SERVER ROLE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER RESOURCES TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER SERVER STATE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER SETTINGS TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT ALTER TRACE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT AUTHENTICATE SERVER TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONNECT ANY DATABASE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONNECT SQL TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CONTROL SERVER TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE ANY DATABASE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE AVAILABILITY GROUP TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE DDL EVENT NOTIFICATION TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE ENDPOINT TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE SERVER ROLE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT CREATE TRACE EVENT NOTIFICATION TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT EXTERNAL ACCESS ASSEMBLY TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT IMPERSONATE ANY LOGIN TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT SELECT ALL USER SECURABLES TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT SHUTDOWN TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT UNSAFE ASSEMBLY TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW ANY DATABASE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW ANY DEFINITION TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
GRANT VIEW SERVER STATE TO [mesa] WITH GRANT OPTION 
GO
use [master]
GO
-- Show Advanced Options
EXEC sp_configure 'show advanced options', 1
GO
RECONFIGURE
GO
-- Enable xp_cmdshell
EXEC sp_configure 'xp_cmdshell', 1
GO
RECONFIGURE
GO

