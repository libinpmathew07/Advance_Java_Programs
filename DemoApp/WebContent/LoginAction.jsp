<%@page import="java.sql.DriverManager"%>
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
  try
   {
  String u=request.getParameter("uname");
  String p=request.getParameter("pass");
  String str="select * from ulogin";
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection conn=DriverManager.getConnection("jdbc:odbc:adlogin");
  Statement stm=conn.createStatement();
  ResultSet rs=stm.executeQuery(str);
  rs.next();
  String uname=rs.getString(1);
  String pass=rs.getString(2);
  if(uname.equals(u)&&pass.equals(p))
  {
	  out.println("LoginSuces!!!");
  }
  else
  {
	  out.println("LoginFail!!");
  }
   }
catch(Exception r)
{
	System.out.println(r);
}
%>
</body>
</html>