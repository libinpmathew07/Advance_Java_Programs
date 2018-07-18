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

<form action="viewsearch.jsp">
Search:<input type="text" name="skill"/>
<input type="submit" value="Search"/>
</form>
<%

String skillvariable=request.getParameter("skill");
//String query="select empname,qualification,currentrole,rolerequest,status from skillset where skills='"+skillvariable+"'";
String query="select A.EMPNAME,A.QUALIFICATION,A.NOOFBATCH,A.STUDENTSHANDLE,A.CURRENTROLE,A.ROLEREQUEST,A.STUDENTSPLACED,A.STATUS,A.EMAIL,B.CERTIFIED,B.SKILLS FROM SKILLMASTER A INNER JOIN  SKILLSET B on A.EMAIL=B.EMAIL  where B.SKILLS='"+skillvariable+"'"; 
//register driverclass
Class.forName("org.h2.Driver");
//create a connection
Connection connection=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/CEBProject","sa","");
//create a statement
Statement statement=connection.createStatement();

ResultSet rs=statement.executeQuery(query);



%>

<center>
<h4>ViewSearchList</h4>
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
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(8)%></td>

</tr>


<%}%>


</table>
<a href="hrheaderpage.jsp">BackToHomePage</a></center>
<hr/>
</body>
</html>