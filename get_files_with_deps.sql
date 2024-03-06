CREATE OR REPLACE TYPE SYS.t_varchar2_arr AS TABLE OF VARCHAR2(500);
/

CREATE OR REPLACE PUBLIC SYNONYM t_varchar2_arr FOR SYS.t_varchar2_arr;

GRANT EXECUTE ON SYS.t_varchar2_arr TO PUBLIC;


CREATE OR REPLACE AND RESOLVE JAVA SOURCE NAMED SYS."FileListHandler"
as import java .lang.*;
import java.util.*;
import java.io.*;

public class FileListHandler
{
  public static String list (String path) {
    String list = "";
    File myFile = new File (path);
    String[] arrayList = myFile.list();

    Arrays.sort(arrayList, String.CASE_INSENSITIVE_ORDER);

    for (int i=0; i < arrayList.length; i++) {
      // Prevent directory listing expanding if we will blow VARCHAR2 limit.
      if ((list.length() + arrayList[i].length() + 1) > 32767)
        break;

      if (!list.equals(""))
        list += "," + arrayList[i];
      else
        list += arrayList[i];
    }
    return list;
  }
};
/

show error

CREATE OR REPLACE PUBLIC SYNONYM FileListHandler FOR SYS.FileListHandler;



CREATE OR REPLACE PACKAGE SYS.file_list_api AS

FUNCTION list (p_path  IN  VARCHAR2) RETURN VARCHAR2
AS LANGUAGE JAVA 
NAME 'FileListHandler.list (java.lang.String) return java.lang.String';

END file_list_api;
/
show error
COMMIT;
ALTER PACKAGE SYS.file_list_api COMPILE;
COMMIT;

CREATE OR REPLACE PUBLIC SYNONYM file_list_api FOR SYS.file_list_api;
COMMIT;
GRANT EXECUTE ON SYS.file_list_api TO PUBLIC;
COMMIT;

CREATE OR REPLACE FUNCTION SYS.get_files (p_dir IN VARCHAR2)
  RETURN t_varchar2_arr PIPELINED
AS
  l_array  APEX_APPLICATION_GLOBAL.vc_arr2;
  l_string VARCHAR2(32767);
BEGIN
  l_array:= APEX_STRING.string_to_table(FILE_LIST_API.list(p_dir), ',');

  FOR i in 1..l_array.count LOOP
    PIPE ROW(l_array(i));
  END LOOP;
  RETURN;
END;
/
show error  

COMMIT;
ALTER FUNCTION SYS.get_files COMPILE;
COMMIT;
CREATE OR REPLACE PUBLIC SYNONYM get_files FOR SYS.get_files;
COMMIT;
GRANT EXECUTE ON SYS.get_files TO PUBLIC;
COMMIT;
