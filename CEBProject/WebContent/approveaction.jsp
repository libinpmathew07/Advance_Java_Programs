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
<h4>ApprovalActionPage</h4>
<hr/>
<center>
<%

String email=request.getParameter("email");

String query="select A.EMPNAME,A.QUALIFICATION,A.NOOFBATCH,A.STUDENTSHANDLE,A.CURRENTROLE,A.ROLEREQUEST,A.STUDENTSPLACED,A.STATUS,A.EMAIL,B.CERTIFIED,B.SKILLS FROM SKILLMASTER A INNER JOIN  SKILLSET B ON A.EMAIL=B.EMAIL where A.EMAIL='"+email+"'";

//register driverclass
  Class.forName("org.h2.Driver");
  //create a connection
  Connection connection=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/CEBProject","sa","");
  //create a statement
  Statement statement=connection.createStatement();
   //execute a query
  ResultSet rs=statement.executeQuery(query);
  
   while(rs.next()){%>
<form action="approvestatus.jsp" method="get">
<table border="1">
<th>EmployeeName</th>
<th>Qualification</th>
<th>NoofBatchs</th>
<th>StudentsHandle</th>
<th>CurrentRole</th>
<th>RoleRequest</th>
<th>StudentsPlaced</th>
<th>Status</th>
<th>Certified</th>
<th>Skills</th>
<th>Action</th>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>

<td><%=rs.getString(8)%></td>

<td><%=rs.getString(10)%></td>
<td><%=rs.getString(11)%></td>
<td>
<select name="status">
<option value="waiting">TillWaiting</option>
<option value="Approved">Approved</option>
<option value="NotApproved">NotApproved</option>
</select>
</td>
</tr>

</table>
<center><input type="submit" value="UPDATEDATA"/></center>
</form>
<%}%>
<%

HttpSession sessions=request.getSession();
sessions.setAttribute("email", email);

%>
</center>

</body>
</html>