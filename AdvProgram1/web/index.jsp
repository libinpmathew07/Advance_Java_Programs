<%-- 
    Document   : index.jsp
    Created on : Feb 2, 2018, 12:44:56 PM
    Author     : Asar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="LoginAction" method="post">
            Username:<input type="text" value="Enter the name" name="uname"/>
            Email:<input type="text" value="Enter the email" name="email"/>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
