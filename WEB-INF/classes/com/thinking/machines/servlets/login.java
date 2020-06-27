package com.thinking.machines.servlets;
import com.thinking.machines.beans.*;
import java.io.*;
import java.util.*;
import javax.servlet.http.*;
import java.net.*; 
import javax.servlet.*; 
import javax.servlet.annotation.WebServlet;
public class login extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
RegisterBean registerBean;
registerBean=(RegisterBean)request.getAttribute("RegisterBean");
String fn=registerBean.getFirstName();
String ln=registerBean.getLastName();
String eid=registerBean.getEmailId();
String pass=registerBean.getPassword();;
//String fn=request.getParameter("firstName");
//String ln=request.getParameter("lastName");
//String eid=request.getParameter("emailId");
//String pass=request.getParameter("password");

System.out.println(fn);
System.out.println(ln);
System.out.println(eid);
System.out.println(pass);
String fileName="c://tomcat9//webapps//myServices//WEB-INF//classes//com//thinking//machines//data//registration.txt";
String firstName;
String lastName;
String emailId;
String password;
boolean found=false; 

try
{
File file=new File(fileName);

if(file.exists())
{
RandomAccessFile randomAccessFile=new RandomAccessFile(file,"rw");
while(randomAccessFile.getFilePointer()<randomAccessFile.length())
{
firstName=randomAccessFile.readLine();
lastName=randomAccessFile.readLine();
emailId=randomAccessFile.readLine();
password=randomAccessFile.readLine();
if(emailId.equals(eid))
{
found=true;
System.out.println("Email id Found");
if(password.equals(pass))
{
System.out.println("Email id Found and password correct");
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("index.jsp");
requestDispatcher.forward(request,response);
}
else
{
found=false;
}
}
}
if(!found)
{
ErrorBean errorBean=new ErrorBean();
errorBean.setError("EmailID or password incorrect");
System.out.println(errorBean.getError());
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("login.jsp");
requestDispatcher.forward(request,response);
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
