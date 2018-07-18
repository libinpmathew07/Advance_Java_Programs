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
<title>SkillMapApplication</title>
</head>
<body>

<h4>ApprovalForm</h4>
<hr>
<%


String query="select email from skillmaster";
//register driverclass
Class.forName("org.h2.Driver");
//create a connection
Connection connection=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/CEBProject","sa","");
//create a statement
Statement statement=connection.createStatement();

ResultSet rs=statement.executeQuery(query);



%>
<form action="approveaction.jsp" method="get">

<table>
<tr><td>EmployeeEmail:</td><td>
<select name="email">
<% while(rs.next()){%>
<option><%=rs.getString(1)%></option>
<%} %>
</select>
</td></tr>


<tr><td><input type="submit" value="View"/></td></tr>
</table>
</form>
<hr/>

</body>
</html>