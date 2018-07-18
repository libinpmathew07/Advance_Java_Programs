<%-- 
    Document   : loginaction
    Created on : Feb 6, 2018, 1:06:41 PM
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
            
            String e=request.getParameter("email");
            
            
            String str="select * from ADUREG where email='"+e+"'";
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            
            Connection con=DriverManager.getConnection("jdbc:odbc:login1","","");
            
            Statement stm=con.createStatement();
            ResultSet rs=stm.executeQuery(str);
            
            rs.next();
            String email=rs.getString("EMAIL");
            
            if(e.equals(email))
            {
                   
            response.sendRedirect("viewdetails.jsp");
            }
            else
            {
                 response.sendRedirect("loginpage.jsp");
                 out.println("<h4>LoginFail!!</h4>");
            }
             
             
            %>
    </body>
</html>
