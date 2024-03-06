CREATE OR REPLACE FUNCTION SYS.oscmd (p_command IN VARCHAR2) RETURN VARCHAR2
AS
LANGUAGE JAVA NAME 'OSCommand.executeCommand (java.lang.String) return java.lang.String';
/
