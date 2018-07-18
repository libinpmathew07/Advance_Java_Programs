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
  
try
{

String u=request.getParameter("uname");
String p=request.getParameter("pass");

String str="select * from hrlogin where uname='"+u+"' and pass='"+p+"'";

Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/pgpproject","sa","");

Statement stm=con.createStatement();

ResultSet rs=stm.executeQuery(str);

rs.next();

String uname=rs.getString(1);

String pass=rs.getString(2);


if(u.equals(uname)&&p.equals(pass))
{
	
	
	
	%>
	  <jsp:forward page="hrhomepage.jsp"></jsp:forward>
	
	<%
}


}
catch(Exception t)
{
	%>
	<jsp:include page="hrloginpage.jsp"></jsp:include>
	<% 
	out.println("LoginFail");
	
}
%>
</body>
</html>