<%-- 
    Document   : regaction
    Created on : Feb 6, 2018, 12:55:11 PM
    Author     : Asar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            String mobile=request.getParameter("mobile");
            String gender=request.getParameter("gen");
            
            String str="insert into adureg values('"+email+"','"+pass+"','"+mobile+"','"+gender+"')";
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            
            Connection con=DriverManager.getConnection("jdbc:odbc:login1","","");
            
            Statement stm=con.createStatement();
            
            stm.executeUpdate(str);
            
            response.sendRedirect("loginpage.jsp");
            
            
            %>
    </body>
</html>
