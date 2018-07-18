<%-- 
    Document   : updatepage
    Created on : May 3, 2017, 5:15:41 PM
    Author     : admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="dbupdate.jsp">
            Uname:<input type="text" name="uname"/>
            <input type="submit" value="Search"/>
        </form>
        
    </body>
</html>
