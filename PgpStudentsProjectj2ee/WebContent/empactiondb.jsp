<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   String u=request.getParameter("email");
   String p=request.getParameter("pass");
   String g=request.getParameter("gen");
   String m=request.getParameter("mobile");
   
   //dbconnection
   
   //String qstr="insert into empreg values('"+u+"','"+p+"','"+g+"','"+m+"')";
   
   String qstr1="insert into empreg values(?,?,?,?)";
   
   
   Class.forName("org.h2.Driver");
   Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/pgpproject","sa","");
   /*Statement stm=con.createStatement();
   
   stm.executeUpdate(qstr);*/
   
   PreparedStatement pt=con.prepareStatement(qstr1);
   
   pt.setString(1,u);
   pt.setString(2,p);
   pt.setString(3,g);
   pt.setString(4,m);
   
   pt.executeUpdate();
   
   out.println("Inserted...");
   
   
   
%>
</body>
</html>