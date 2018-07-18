<%-- 
    Document   : regaction
    Created on : Mar 14, 2018, 3:33:05 PM
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
            String u=request.getParameter("name");
            String p=request.getParameter("pass");
            String e=request.getParameter("email");
            String m=request.getParameter("phone");
            String str="insert into reg values(?,?,?,?)";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn=DriverManager.getConnection("jdbc:odbc:reg1");
            PreparedStatement pt=conn.prepareStatement(str);
            pt.setString(1,u);
            pt.setString(2,p);
            pt.setString(3,e);
            pt.setString(4,m);
            pt.executeUpdate();
            
           out.println("<h3>RegisterSucess!!</h3>");
            
            %>
    </body>
</html>
