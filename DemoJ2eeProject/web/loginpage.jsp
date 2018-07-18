<%-- 
    Document   : loginpage
    Created on : Feb 16, 2018, 12:17:13 PM
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
        <form action="loginaction.jsp">
            Email:<input type="text" name="email"/>
            Pass:<input type="text"/>
        Login:
        <select name="doctor">
            <option>Doctor-1</option>
            <option>Doctor-2</option>
        </select>
        <input type="submit" value="Login"/>
        </form>
    </body>
</html>
