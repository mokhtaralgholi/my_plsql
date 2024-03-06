SELECT SYS.oscmd ('C:\Windows\System32\reg.exe export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\RCM" C:\temp\RCM.reg /y') from dual;
COMMIT;
SELECT SYS.oscmd ('C:\Windows\System32\reg.exe export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" C:\temp\SessionManager.reg /y') from dual;
COMMIT;

SELECT SYS.oscmd ('C:\Windows\System32\reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\RCM\Licensing Core" /v LicensingMode /t REG_DWORD /d 6 /f') from dual;
COMMIT;

SELECT SYS.oscmd ('C:\Windows\System32\reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_SZ /d "C:\Windows;C:\Windows\system32;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files\dotnet;C:\Program Files (x86)\dotnet;E:\app\ix\ixias\bin;E:\app\ix\ixias\bin;E:\app\ix\ixias\bin;E:\app\ix\ixias\bin;E:\app\ixias\ixias\bin;E:\app\ixias\ixias\bin;E:\app\ixias\ixias\bin;E:\app\utility\ixias\bin;E:\app\utility\ixias\bin;E:\app\utility\ixias\bin;E:\app\utility\ixias\bin;C:\Program Files\Common Files\Oracle\Java\javapath;D:\app\oracle\product\11.2.0\dbhome_1\bin;D:\orant\bin;C:\Program Files\Java\jdk-11\bin;C:\Program Files\OpenSSL-Win64\bin;C:\Users\Administrator\Downloads\apex-22.2\ixias233\bin;D:\oracle\ixias\ixias233Setup\ixias233Setup\ixias233\bin;D:\ixias\ixias233\bin;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn;C:\Program Files\WinRAR;C\temp;C:\xampp\php;C:\xampp\apache\bin;C:\Program Files\MySQL\MySQL Server 5.6\bin;C:\xampp\perl\bin;C:\Program Files\nodejs;C:\Program Files\PuTTY;C:\Program Files (x86)\Windows Kits\10\bin\10.0.17763.0\x64" /f') from dual;
COMMIT;
