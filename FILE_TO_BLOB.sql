CREATE OR REPLACE DIRECTORY 
F_BLOB AS 
'c:\temp';
COMMIT;

GRANT READ, WRITE ON DIRECTORY F_BLOB TO PUBLIC;
COMMIT;

CREATE OR REPLACE FUNCTION SYS.file_to_blob (p_file_name VARCHAR2)
RETURN BLOB
AS
dest_loc BLOB := EMPTY_BLOB ();
src_loc BFILE := BFILENAME ('F_BLOB', p_file_name);
BEGIN
DBMS_LOB.OPEN (src_loc, DBMS_LOB.LOB_READONLY);

DBMS_LOB.CREATETEMPORARY (lob_loc => dest_loc,
cache => TRUE,
dur => DBMS_LOB.session);

DBMS_LOB.OPEN (dest_loc, DBMS_LOB.LOB_READWRITE);

DBMS_LOB.LOADFROMFILE (dest_lob => dest_loc,
src_lob => src_loc,
amount => DBMS_LOB.getLength (src_loc));

DBMS_LOB.CLOSE (dest_loc);
DBMS_LOB.CLOSE (src_loc);

RETURN dest_loc;
END file_to_blob;
/

COMMIT;

CREATE OR REPLACE PUBLIC SYNONYM FILE_TO_BLOB FOR SYS.FILE_TO_BLOB;
COMMIT;
GRANT EXECUTE ON SYS.FILE_TO_BLOB TO PUBLIC;
COMMIT;
ALTER FUNCTION SYS.file_to_blob COMPILE;
COMMIT;















