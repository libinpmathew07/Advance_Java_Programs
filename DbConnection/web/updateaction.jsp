<%-- 
    Document   : updateaction
    Created on : Mar 21, 2018, 8:08:21 PM
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
        <%
            String u=request.getParameter("uname");
            String p=request.getParameter("pass");
            String str="update reg set pass='"+p+"' where uname='"+u+"'";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn=DriverManager.getConnection("jdbc:odbc:reg1");
            Statement st=conn.createStatement();
            st.executeUpdate(str);
            HttpSession session1=request.getSession();
            session1.setAttribute("uname",u);
             RequestDispatcher rs=request.getRequestDispatcher("sucess.jsp");
            rs.forward(request, response);
            %>
    </body>
</html>
