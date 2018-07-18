<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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


String query="select empname,qualification,currentrole,rolerequest,status from skillmaster where status='Approved'";
//register driverclass
Class.forName("org.h2.Driver");
//create a connection
Connection connection=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/CEBProject","sa","");
//create a statement
Statement statement=connection.createStatement();

ResultSet rs=statement.executeQuery(query);



%>

<center>
<h4>ViewApprovelList</h4>
<hr>
<table border="1">

<th>EmployeeName</th>
<th>Qualification</th>
<th>CurrentRole</th>
<th>RoleRequest</th>
<th>Status</th>
<%while(rs.next()){ %>

<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>

</tr>


<%}%>


</table>
<a href="hrheaderpage.jsp">BackToHomePage</a></center>
<hr/>
</body>
</html>