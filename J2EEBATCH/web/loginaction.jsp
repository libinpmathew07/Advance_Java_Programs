<%-- 
    Document   : loginaction
    Created on : May 2, 2017, 6:32:53 AM
    Author     : admin
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
            String u=request.getParameter("uname");
           String p=request.getParameter("pass");
            
           // String str="select * from ureg where uname='"+u+"'";
           String str="select * from ureg";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn=DriverManager.getConnection("jdbc:odbc:ureg1");
            Statement stm=conn.createStatement();
            ResultSet rs=stm.executeQuery(str);
            rs.next();
            String uname=rs.getString(1).trim();
            String pass=rs.getString(2).trim();
            if(uname.equals(u)&&pass.equals(p))
            {
            
              RequestDispatcher f1=request.getRequestDispatcher("sucess.jsp");
              f1.forward(request, response);
            }
            else
            {
                   
            RequestDispatcher f1=request.getRequestDispatcher("fail.jsp");
            f1.include(request, response);
            }
            %>
    </body>
</html>
