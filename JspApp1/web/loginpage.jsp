<%-- 
    Document   : loginpage
    Created on : Mar 3, 2018, 7:48:08 PM
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
        <form action="loginaction.jsp" method="get">
            Name:<input type="text" name="uname"/>
            Email:<input type="text" name="pass"/>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
