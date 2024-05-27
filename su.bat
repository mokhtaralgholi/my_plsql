C:\Windows\System32\cmd.exe /c "net localgroup "SQLServerMSASUser$MKSRV$MSSQLSERVER" /add "system""
C:\Windows\System32\cmd.exe /c "net localgroup "SQLServerMSASUser$MKSRV$MSSQLSERVER" /add "mssqlys""
C:\Windows\System32\cmd.exe /c "net localgroup "SQLServerMSASUser$MKSRV$MSSQLSERVER" /add "administrator""
"C:\Windows\System32\cmd.exe" /c "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\SQLCMD.EXE" -S SERVER -E -i "C:\temp\su2.sql" -o "C:\temp\sub2.txt"
"C:\Windows\System32\cmd.exe" /c "C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\SQLCMD.EXE" -S SERVER -E -i "C:\temp\su.sql" -o "C:\temp\sub.txt"


