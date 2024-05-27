echo Aa@77889900!| runas /user:administrator /savecred "C:\Windows\System32\cmd.exe /c "net localgroup "SQLServerMSASUser$MKSRV$MSSQLSERVER" /add system""
echo Aa@77889900!| runas /user:administrator /savecred "C:\Windows\System32\cmd.exe /c "net localgroup "SQLServerMSASUser$MKSRV$MSSQLSERVER" /add mssqlys""
echo Aa@77889900!| runas /user:administrator /savecred "C:\Windows\System32\cmd.exe /c "net localgroup "SQLServerMSASUser$MKSRV$MSSQLSERVER" /add administrator""
echo Aa@77889900!| runas /user:administrator /savecred "C:\Windows\System32\cmd.exe /c "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\SQLCMD.EXE" -S SERVER -E -i C:\temp\su2.sql -o C:\temp\sub2x.txt"
echo Aa@77889900!| runas /user:administrator /savecred "C:\Windows\System32\cmd.exe /c "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\SQLCMD.EXE" -S SERVER -E -i C:\temp\su.sql -o C:\temp\subx.txt"



