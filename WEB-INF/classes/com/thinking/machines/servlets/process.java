package com.thinking.machines.servlets;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.zip.*;
import java.nio.file.*;

@WebServlet("/process")
public class process extends HttpServlet 
{
public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
{
PrintWriter pw;
pw=response.getWriter(); 
response.setContentType("text/html");
pw.println("hello");
RequestDispatcher requestDispatcher=request.getRequestDispatcher("login.jsp");
requestDispatcher.forward(request,response);
System.out.println("hello bhai");
}
}