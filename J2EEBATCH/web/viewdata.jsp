<%-- 
    Document   : viewdata
    Created on : Feb 20, 2018, 11:31:48 AM
    Author     : Asar
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="viewdata.jsp">
<!--            Course:<select name="course">
                <option>mca</option>
                <option>be</option>
                <option>bsc</option>
            </select><br>-->
            <input type="submit" name="submit" value="submit"/>
         </form><br><br>
         <%
             //String cor=request.getParameter("course");
             //String str="select * from ureg where course='"+cor+"'";
             String str="select * from ureg";
             Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
             Connection conn=DriverManager.getConnection("jdbc:odbc:ureg1");
             //Class.forName("oracle.jdbc.driver.OracleDriver");
              //Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
              Statement stm=conn.createStatement();
           ResultSet rs=stm.executeQuery(str);
             %>
             <table border="1">
             <tr>
                 <th>NAME</th>
                 <th>PASS</th>
                 <th>EmailID</th>
                 <th>Phone</th>
             </tr>
             <%while(rs.next()){%>
             <tr>
                  <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(3)%></td>
                 <td><%=rs.getString(4)%></td>
             </tr>
              <%}%>
    </body>
</html>
