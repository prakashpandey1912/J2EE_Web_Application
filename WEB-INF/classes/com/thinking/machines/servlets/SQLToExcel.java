package com.thinking.machines.servlets;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.zip.*;
import java.nio.file.*;

@WebServlet("/SQLToExcel")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class SQLToExcel extends HttpServlet 
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
String uploadPath = request.getServletContext().getRealPath("");       
String savePath = uploadPath+"WEB-INF"+File.separator+"SQLToPdf"+File.separator;
File fileSaveDir = new File(savePath);
if(!fileSaveDir.exists()) 
{
fileSaveDir.mkdir();
}
String prakash=null;
for (Part part : request.getParts()) 
{
String fileName = extractFileName(part);
prakash=new String(fileName);
fileName = new File(fileName).getName();
part.write(savePath + File.separator + fileName);
}
//upload done

String filePath=savePath+prakash;
String dbName=prakash.split("\\.")[0];
String dbUserName="prakash";
String dbPassword="prakash";
String[] executeCmd = new String[]{"mysql", "--user=" + dbUserName, "--password=" + dbPassword, dbName,"-e", " source "+filePath};
//String[] executeCmd = new String[]{"mysql", "--user=" + dbUserName, "--password=" + dbPassword, "-e", "source " + filePath};
Process runtimeProcess;  
Connection con;
boolean found=false;
try 
{
Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/mysql?user="+dbUserName+"&password="+dbPassword);
Statement stmt ;
stmt= con.createStatement();
ResultSet rs ;
rs= con.getMetaData().getCatalogs();
while(rs.next())
{
String catalogs = rs.getString(1);
if(dbName.equals(catalogs))
{
System.out.println("the database "+dbName+" exists");
found=true;
}
}
if(!found)
{
String sql = "CREATE DATABASE "+dbName;
stmt.executeUpdate(sql);
}
runtimeProcess = Runtime.getRuntime().exec(executeCmd);  
int processComplete = runtimeProcess.waitFor();  
System.out.println(processComplete);
if (processComplete == 0) 
{  
System.out.println("Backup restored successfully");
} 
else
{  
System.out.println("Could not restore the backup");  
}
rs.close();
con.close();

//resore done

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/"+dbName+"?user="+dbUserName+"&password="+dbPassword);
Statement stmtt = conn.createStatement();
Statement stm=conn.createStatement();
ResultSet r = stmtt.executeQuery("Show tables");
String tableName;
String zipFileName = savePath+dbName.concat(".zip");
FileOutputStream fos = new FileOutputStream(zipFileName);
ZipOutputStream zos = new ZipOutputStream(fos);
ResultSet result=null;
while(r.next())
{
tableName=r.getString(1);
System.out.println(r.getString(1));
String sql = "SELECT * INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/"+tableName+".xls' FROM "+tableName;                 
result = stm.executeQuery(sql);
String zipPath = "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/"+tableName+".xls"; 
File zip=new File(zipPath);
zos.putNextEntry(new ZipEntry(zip.getName()));
byte[] bytes = Files.readAllBytes(Paths.get(zipPath));
zos.write(bytes, 0, bytes.length);
zos.closeEntry();           
zip.delete();
}
zos.close();
fos.close();
r.close();
result.close();
conn.close();

//excel or zip create hua
 
PrintWriter out=response.getWriter();
response.setContentType("APPLICATION/OCTET-STREAM");
FileInputStream fileInputStream=new FileInputStream(zipFileName);
int i;
while((i=fileInputStream.read())!=-1)
{
out.write(i);
}
fileInputStream.close();
out.close();	
	
//response gya

}
catch (Exception ex) 
{  
ex.printStackTrace();  
}
}
catch(Exception e)
{
System.out.println(e+"prakash is best :)");
}

}


public String extractFileName(Part part) 
{
String contentDisp = part.getHeader("content-disposition");
String[] items = contentDisp.split(";");
for (String s : items) 
{
if (s.trim().startsWith("filename")) 
{
return s.substring(s.indexOf("=") + 2, s.length()-1);
}
}
return "";
}
}
