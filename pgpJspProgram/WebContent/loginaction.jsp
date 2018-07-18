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
  String u=request.getParameter("uname");
  String p=request.getParameter("email");
  
  
  if(u.equals("admin")&&p.equals("admin@gmail.com"))
  {%>
  
    <jsp:forward page="sucess.jsp"/>
	  <!-- RequestDispatcher dis=request.getRequestDispatcher("sucess.jsp");
	  dis.forward(request, response); -->
  <% }
  else
  {%>
  
    <jsp:include page="LoginPage.jsp"/>
  
	  <!-- RequestDispatcher dis=request.getRequestDispatcher("LoginPage.jsp");
	  dis.include(request, response);
	   response.sendRedirect("LoginPage.jsp"); -->
<% 	   out.println("LoginFail..");
  }
  
%>
</body>
</html>