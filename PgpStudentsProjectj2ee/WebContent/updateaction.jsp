<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String e=request.getParameter("email");

String p=request.getParameter("pass");

String str="update empreg set pass='"+p+"' where email='"+e+"'";

Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/pgpproject","sa","");

Statement stm=con.createStatement();

stm.executeUpdate(str);

out.println("Updated Sucess!!");

%>
</body>
</html>