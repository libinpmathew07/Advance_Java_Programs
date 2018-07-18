<%-- 
    Document   : viewdetails
    Created on : Feb 6, 2018, 1:10:53 PM
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
        <form action="viewdetails.jsp">
            Email:<input type="text" name="email"/>
            <input type="submit" value="View"/>
                
        </form>
        <%
            
            String email=request.getParameter("email");
                                                         
            String str="select * from adureg where email='"+email+"'";
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            
            Connection con=DriverManager.getConnection("jdbc:odbc:login1","","");
            
            Statement stm=con.createStatement();
            
            ResultSet rs=stm.executeQuery(str);
           
            %>
            <table border="1">
                <th>Email</th>
                <th>Pass</th>
                <th>Mobile</th>
                <th>Gender</th>
                
            
            <%
            while(rs.next())
            {%>
            
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
    </tr>
            
            
            <%
            }
            %>
            
          </table>  
    </body>
</html>
