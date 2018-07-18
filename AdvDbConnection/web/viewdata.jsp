<%-- 
    Document   : viewdata
    Created on : Feb 9, 2018, 2:08:16 PM
    Author     : Asar
--%>

<%@page import="java.sql.ResultSet"%>
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
            String u=request.getParameter("email");
             String str="select * from adureg where email='"+u+"'";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn=DriverManager.getConnection("jdbc:odbc:login1","","");
            Statement stm=conn.createStatement();
            
            
            ResultSet rs=stm.executeQuery(str);
            
        
            %>
            <%while(rs.next()){%>
            <form action="updateaction.jsp">
            <table border="1">
    
    <tr>
        <td>Pass</td>
        <td><input type="text" name="pass" value="<%=rs.getString(2)%>"/></td>
    </tr>
    <tr>
        <td>Mobile</td>
        <td><input type="text" name="mobile" value="<%=rs.getString(3)%>"/></td>
    </tr>
    <tr>
        <td></td>
        <td><input type="submit" value="Update"/></td>
    </tr>
            </table>
            </form>
        <%
            }
        %>
    </body>
</html>
