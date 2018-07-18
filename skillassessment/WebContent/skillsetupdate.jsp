<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String s = request.getParameter("status");
	HttpSession sess = request.getSession(true);
	String A = (String)sess.getAttribute("uname");
	Class.forName("org.h2.Driver");
	Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");
	Statement st = con.createStatement();
	String str = "UPDATE SKILLSET SET STATUS='"+s+"' WHERE NAME='"+A+"'";
	st.executeUpdate(str);
	/* 
	String z = "SELECT  * FROM WHERE NAME='"+A+"'";
	ResultSet rs = st.executeQuery(z);
	rs.next();
	String a1 = rs.getString(1);
	String a2 = rs.getString(2);
	String a3 = rs.getString(3);
	String a4 = rs.getString(4);
	String a5 = rs.getString(5);
	String a6 = rs.getString(6);
	String a7 = rs.getString(7);
	String a8 = rs.getString(8);
	String a9 = rs.getString(9);
	String y = "INSERT INTO SKILLSETSTATUS VALUES('"+a1+"', '"+a2+"', '"+a3+"', '"+a4+"', '"+a5+"', '"+a6+"', '"+a7+"', '"+a8+"', '"+a9+"')";
	st.executeUpdate(y);*/
	RequestDispatcher di = request.getRequestDispatcher("skillsetapplyperson.jsp");
	di.forward(request,response);
	%>
</body>
</html>