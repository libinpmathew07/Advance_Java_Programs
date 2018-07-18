<%-- 
    Document   : JspLogin
    Created on : Mar 8, 2018, 3:40:31 PM
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
        <form action="loginaction.jsp" method="post">
            Name:<input type="text" name="uname"/>
            <input type="submit" value="Login"/>
            
        </form>
        <%@include  file="footer.jsp" %>
    </body>
</html>
