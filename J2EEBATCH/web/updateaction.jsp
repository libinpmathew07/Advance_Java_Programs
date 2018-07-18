<%-- 
    Document   : updateaction
    Created on : May 3, 2017, 5:37:25 PM
    Author     : admin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            String str="update ureg set uname='"+u+"' where pass='"+p+"'";
            //Class.forName("oracle.jdbc.driver.OracleDriver");
            //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection conn=DriverManager.getConnection("jdbc:odbc:ureg1");
            Statement stm=conn.createStatement();
            stm.executeUpdate(str);
            out.println("update sucess!!"+u+""+p);
            %>
    </body>
</html>
