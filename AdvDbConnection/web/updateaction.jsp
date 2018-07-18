<%-- 
    Document   : updateaction
    Created on : Feb 9, 2018, 2:34:53 PM
    Author     : Asar
--%>

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
            String p=request.getParameter("pass");
            String m=request.getParameter("mobile");
            String str="update adureg set pass='"+p+"' where mobile='"+m+"'";
            //Class.forName("oracle.jdbc.driver.OracleDriver");
            //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection conn=DriverManager.getConnection("jdbc:odbc:login1","","");
            Statement stm=conn.createStatement();
            stm.executeUpdate(str);
            out.println("update sucess!!"+p+""+m);
            %>
    </body>
</html>
