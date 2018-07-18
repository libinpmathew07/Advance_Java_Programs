<%-- 
    Document   : register
    Created on : Feb 20, 2018, 10:38:02 AM
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
        <form action="registeraction.jsp">
        UserName:<input type="text" name="uname" value=""/><br><br>
        Password:<input type="text" name="pass" value=""/><br><br>
        Email-id:<input type="text" name="email" value=""/><br><br>
        PhoneNo:<input type="text" name="phone" value=""/><br><br>
        Male:<input type="radio" name="gen" value="male" />Female:
        <input type="radio" name="gen" value="female" /><br><br>
        Course:<select name="course"><br><br>
            <option>mca</option>
            <option>be</option>
            <option>bsc</option>
        </select><br><br>
        Degree:UG<input type="checkbox" name="UG" value="UG" />
        PG<input type="checkbox" name="PG" value="PG" /><br><br>
        <input type="submit" name="submit" value="Submit" />
           </form>
    </body>
</html>
