<%-- 
    Document   : sucess
    Created on : Mar 21, 2018, 8:05:30 PM
    Author     : Asar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View Data</h1>
        
        <%
            HttpSession session1=request.getSession(true);
           
           String kk=(String)session1.getAttribute("uname");
            
           out.println("welcome"+kk);
           
           String str="select email from reg where uname='"+kk+"'";
           
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn=DriverManager.getConnection("jdbc:odbc:reg1");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(str);
            rs.next();
            
            out.println("<form action='delete.jsp'>");
            out.println("<input type='text' name='u1' value='"+kk+"'/>");
            out.println("<input type='text' value='"+rs.getString(1)+"'/>");
            out.println("<input type='submit' value='Delete'/>");
            out.println("</form>");
            
            %>
    </body>
</html>
