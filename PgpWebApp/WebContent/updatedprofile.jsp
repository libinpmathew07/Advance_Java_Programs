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
HttpSession sess=request.getSession(true);

String s=(String)sess.getAttribute("emailid");

String m=request.getParameter("mobile");

String str="update empreg set mobile='"+m+"' where email='"+s+"'";

Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/pgpapp","sa","");

Statement stm=con.createStatement();

stm.executeUpdate(str);

out.println("Updated Your Profile..");

%>
</body>
</html>