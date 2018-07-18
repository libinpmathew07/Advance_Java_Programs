<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SkillMapApplication</title>
</head>
<body>
<%

HttpSession sessions=request.getSession(true);
String email=(String)sessions.getAttribute("email");

String statusapprove=request.getParameter("status");



String query="update skillmaster set status='"+statusapprove+"' where email='"+email+"'";

//register driverclass
Class.forName("org.h2.Driver");
//create a connection
Connection connection=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/CEBProject","sa","");
//create a statement
Statement statement=connection.createStatement();

statement.executeUpdate(query);

out.println("Updated...Sucess!!");

%>
</body>
</html>