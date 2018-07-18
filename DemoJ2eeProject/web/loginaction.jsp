<%-- 
    Document   : loginaction
    Created on : Feb 16, 2018, 12:24:18 PM
    Author     : Asar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String e=request.getParameter("email");
            String d=request.getParameter("doctor");
            String str="select * from dlogin where email='"+e+"'AND doctor='"+d+"'";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:dlogin","","");
            Statement stm=con.createStatement();
            ResultSet rs=stm.executeQuery(str);
            rs.next();
            String email=rs.getString(1);
            String doctor=rs.getString(2);
            if(e.equals(email)||d.equals(doctor))
            {
                out.println("LoginScsss");
            }
            else
            {
                out.println("LoginFail!!");
            }
            %>
    </body>
</html>
