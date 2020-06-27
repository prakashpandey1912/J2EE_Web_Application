<%@ page import="com.thinking.machines.beans.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<jsp:useBean id='RegisterBean' scope='request' class='com.thinking.machines.beans.RegisterBean'/>
<jsp:setProperty name="RegisterBean" property="*" />
<jsp:forward page="login"/>