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
   String e=request.getParameter("email");

   if(e.equals("admin@gmail.com"))
   {
	 // RequestDispatcher dis=request.getRequestDispatcher("page1.jsp");
	  //dis.forward(request, response);
	  
	  HttpSession sess=request.getSession();
	  
	  sess.setAttribute("emailid",e);
	  
	  %>
	  
	   <jsp:forward page="page1.jsp"></jsp:forward>
	  <%
	  
	 // response.sendRedirect("page1.jsp");
   }
   else
   {%>
	   <!-- RequestDispatcher dis=request.getRequestDispatcher("page2.jsp");
		  dis.include(request, response);-->
	  
<jsp:include page="LoginPage.jsp"></jsp:include>
<% 	 
out.println("LoginFail!!!");
   }

%>
</body>
</html>