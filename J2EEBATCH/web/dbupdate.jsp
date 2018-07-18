<%-- 
    Document   : dbupdate
    Created on : May 3, 2017, 5:46:08 PM
    Author     : admin
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
            String u=request.getParameter("uname");
            String str="select * from ureg where uname='"+u+"'";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:ureg1");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(str);
            
        
            %>
            <%while(rs.next()){%>
            <form action="updateaction.jsp">
            <table border="1">
    <tr>
        <td>Name</td>
        <td><input type="text" name="uname" value="<%=rs.getString(1)%>"/></td>
        
    </tr>
    <tr>
        <td>Pass</td>
        <td><input type="text" name="pass" value="<%=rs.getString(2)%>"/></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><input type="text" name="email" value="<%=rs.getString(3)%>"/></td>
    </tr>
    <tr>
        <td></td>
        <td><input type="submit" value="Update"/></td>
    </tr>
            </table>
                
            </form>
    <%}%>
    </body>
</html>
