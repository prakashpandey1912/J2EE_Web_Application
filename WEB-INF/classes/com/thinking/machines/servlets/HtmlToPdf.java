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

@WebServlet("/HtmlToPdf")
public class HtmlToPdf extends HttpServlet 
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
String arg=request.getParameter("htmlUrl");
System.out.println(arg);
ProcessBuilder pb = new ProcessBuilder("python","c:/tomcat9/webapps/myServices/WEB-INF/py/eg2.py",arg);
Process p = pb.start();
BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
String line;
System.out.println(in.readLine());
while ((line =in.readLine()) != null) 
{
System.out.println(line);
}
String []str=arg.split("\\.");

String filePath = "c:/tomcat9/webapps/myServices/WEB-INF/HtmlToPdf"+str[1].concat(".pdf");
File file = new File(filePath);
String zipFileName = "c:/tomcat9/webapps/myServices/WEB-INF/HtmlToPdf"+file.getName().concat(".zip");
FileOutputStream fos = new FileOutputStream(zipFileName);
ZipOutputStream zos = new ZipOutputStream(fos);
zos.putNextEntry(new ZipEntry(file.getName()));
byte[] bytes = Files.readAllBytes(Paths.get(filePath));
zos.write(bytes, 0, bytes.length);
zos.closeEntry();
zos.close();           
System.out.println("kaam ho gya");
System.out.println("prakash is best :)");

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

}
catch (Exception ex) 
{ 
System.out.println("prakash is best :)");
System.out.println(ex); 
ex.printStackTrace();  
}

}
}