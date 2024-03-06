CREATE OR REPLACE AND RESOLVE JAVA SOURCE NAMED SYS."OSCommand"
as import java .io.*;
  public class OSCommand {
    public static String executeCommand(String command) {
      StringBuffer sb = new StringBuffer();
      try {
        String[] finalCommand;
        if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1) {
          String systemRootvariable;
          try {systemRootvariable = System.getenv("SystemRoot");}
          catch (ClassCastException e) {
	        systemRootvariable = System.getProperty("SystemRoot");
          }
          finalCommand = new String[4];
          finalCommand[0] = systemRootvariable+"\\system32\\cmd.exe";
          finalCommand[1] = "/y";
          finalCommand[2] = "/c";
          finalCommand[3] = command;
        } else { // Linux or Unix System
          finalCommand = new String[3];
          finalCommand[0] = "/bin/sh";
          finalCommand[1] = "-c";
          finalCommand[2] = command;
        }
        // Execute the command...
        final Process pr = Runtime.getRuntime().exec(finalCommand);
        pr.waitFor();
        // Capture output from STDOUT
        BufferedReader br_in = null;
        try {
          br_in = new BufferedReader(new InputStreamReader(pr.getInputStream()));
          String buff = null;
          while ((buff = br_in.readLine()) != null) {
            sb.append(buff); sb.append("\n");
            //try {Thread.sleep(100);} catch(Exception e) {}
          }
          br_in.close();
        } catch (IOException ioe) {
          sb.append("IOException in input stream: ").append(ioe.getMessage());
          System.out.println("Error printing process output.");
          ioe.printStackTrace();
        } finally {
          try {
            br_in.close();
          } catch (Exception ex) {}
        }
        // Capture output from STDERR
        BufferedReader br_err = null;
        try {
          br_err = new BufferedReader(new InputStreamReader(pr.getErrorStream()));
          String buff = null;
          while ((buff = br_err.readLine()) != null) {
            sb.append("stderr:");
            sb.append(buff);
            sb.append("\n");
            //try {Thread.sleep(100);} catch(Exception e) {}
          }
          br_err.close();
        } catch (IOException ioe) {
          sb.append("IOException in error stream: ").append(ioe.getMessage());
          System.out.println("Error printing execution errors.");
          ioe.printStackTrace();
        } finally {
          try {
            br_err.close();
          } catch (Exception ex) {}
        }
      }
      catch (Exception ex) {
        sb.append("Exception: ").append(ex.getMessage());
        System.out.println(ex.getLocalizedMessage());
      }
      return sb.toString();
    }
  };
/
