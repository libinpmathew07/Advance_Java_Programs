<%-- 
    Document   : usebeanprogram
    Created on : Mar 8, 2018, 4:53:28 PM
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
        <h1>UseBean</h1>
        <jsp:useBean  id="r" class="a.example"/>
            <jsp:setProperty property="*" name="r"/>
       
        Your Record is:
        <jsp:getProperty name="r" property="name"/>
        <jsp:getProperty name="r" property="pass"/>
    </body>
</html>
