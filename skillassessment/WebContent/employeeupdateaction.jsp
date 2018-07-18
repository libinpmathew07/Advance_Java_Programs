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
	HttpSession session1 = request.getSession();
	String usr = (String)session.getAttribute("u");
	String a2 = request.getParameter("pwd");
	String a3 = request.getParameter("email");
	String a4 = request.getParameter("dob");
	String a5 = request.getParameter("phno");
	String a6 = request.getParameter("gender");
	String str="update empdetails set password='"+a2+"',email='"+a3+"',DOB='"+a4+"',phone='"+a5+"',gender='"+a6+"' where name='"+usr+"'";
	Class.forName("org.h2.Driver");
	Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
	Statement stm=con.createStatement();
	stm.executeUpdate(str);
	RequestDispatcher di = request.getRequestDispatcher("employeepage.jsp");
	di.forward(request,response);
%>
</body>
</html>