<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
	String e = request.getParameter("usrname");
	String p = request.getParameter("pass");
	HttpSession sess = request.getSession();
	sess.setAttribute("u", e);
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
	Statement st = con.createStatement();
	String str = "select * from empdetails where name = '"+e+"' and password = '"+p+"'";
	ResultSet rs = st.executeQuery(str);
	rs.next();
	String username = rs.getString(1);
	String password = rs.getString(2);
	if(e.equalsIgnoreCase(username) && p.equals(password))
	{
		%>
		<jsp:forward page="emppage.jsp"></jsp:forward>
		<%
	}
	
	}
	catch(Exception t)
	{
		%>
		<jsp:include page="employeelogin.jsp"></jsp:include>
		<%
		out.println("LOGIN FAIL");
	}
	%>
</body>
</html>