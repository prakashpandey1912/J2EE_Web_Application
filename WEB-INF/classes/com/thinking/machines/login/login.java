package com.thinking.machines.register;
import java.io.*;
import java.util.*;
import javax.servlet.http.*;
import java.net.*; 
import javax.servlet.*; 
import javax.servlet.annotation.WebServlet;
public class register extends HttpServlet
{

public void doGet(HttpServletRequest request,HttpServletResponse response)
{
String eid=request.getParameter("emailId");
String pass=request.getParameter("password");
System.out.println(eid);
System.out.println(pass);
String fileName="c://tomcat9//webapps//myServices//WEB-INF//classes//com//thinking//machines//data//registration.txt";
String emailId;
String password;
boolean found=false;
try
{
response.setContentType("text/html"); 
PrintWriter pw;
pw=response.getWriter(); 
File file=new File(fileName);

if(file.exists())
{
RandomAccessFile randomAccessFile=new RandomAccessFile(file,"rw");
while(randomAccessFile.getFilePointer()<randomAccessFile.length())
{
emailId=randomAccessFile.readLine();
password=randomAccessFile.readLine();
if(emailId.equals(eid))
{
if(password.equals(pass))
{
found=true;
break;
}
else
{
System.out.println("wrong password");
}
}
}
if(found)
{

randomAccessFile.close();
}
else
{
randomAccessFile.close();
}
}
else
{
System.out.println("not exist");
}
}
catch(Exception exception)
{
System.out.println("invalid");
}
}
}
