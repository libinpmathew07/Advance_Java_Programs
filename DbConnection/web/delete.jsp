<%-- 
    Document   : delete
    Created on : Mar 21, 2018, 8:28:07 PM
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
            String u2=request.getParameter("u1");
                    
             out.println(u2);       
            String str="delete  from reg where uname='"+u2+"'";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn=DriverManager.getConnection("jdbc:odbc:reg1");
            Statement stm=conn.createStatement();
            stm.executeUpdate(str);
            
            out.println("Deleted Sucess");
            
            
            
            %>
    </body>
</html>
