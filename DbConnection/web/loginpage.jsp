<%-- 
    Document   : loginpage
    Created on : Mar 14, 2018, 3:33:13 PM
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
            Name:<input type="text" name="name"/>
            Pass:<input type="text" name="pass"/>
           
            <input type="submit" value="Login"/>
        </form>   
    </body>
</html>
