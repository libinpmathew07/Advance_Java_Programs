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

String e=request.getParameter("email");
String p=request.getParameter("pass");

String str="select * from empreg where email='"+e+"' and pass='"+p+"'";

Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/pgpproject","sa","");

Statement stm=con.createStatement();

ResultSet rs=stm.executeQuery(str);

rs.next();

String email=rs.getString(1);

String pass=rs.getString(2);


if(e.equals(email)&&p.equals(pass))
{
	
	HttpSession session1=request.getSession();
	
	session1.setAttribute("Email", e);
	
	
	%>
	  <jsp:forward page="skillset.jsp"></jsp:forward>
	
	<%
}


}
catch(Exception t)
{
	%>
	<jsp:include page="UserLogin.jsp"></jsp:include>
	<% 
	out.println("LoginFail");
	
}
%>
</body>
</html>