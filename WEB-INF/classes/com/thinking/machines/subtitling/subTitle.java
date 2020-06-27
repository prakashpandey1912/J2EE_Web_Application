package com.thinking.machines.subtitling;
import java.io.*;
import java.util.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
public class subTitle extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
String ss=request.getParameter("file");
System.out.println(ss);
String srt=request.getParameter("srtFile");
System.out.println(srt);
String emb=request.getParameter("embFile");
System.out.println(emb);

}
}
