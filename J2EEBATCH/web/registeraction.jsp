<%-- 
    Document   : registeraction
    Created on : Feb 20, 2018, 10:38:21 AM
    Author     : Asar
--%>

<%@page import="java.sql.PreparedStatement"%>
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
            String uname=request.getParameter("uname");
             String p=request.getParameter("pass");
            String email=request.getParameter("email");
            String phone=request.getParameter("phone");
            String gen=request.getParameter("gen");
            String course=request.getParameter("course");
            String ug=request.getParameter("UG");
            String pg=request.getParameter("PG");
            
            String str="insert into ureg values(?,?,?,?,?,?,?,?)";
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:ureg1");
            PreparedStatement pt=con.prepareStatement(str);
            pt.setString(1,uname);
            pt.setString(2,p);
              pt.setString(3,email);
               pt.setString(4,phone);
                pt.setString(5,gen);
                 pt.setString(6,course);
                  pt.setString(7,ug);
                   pt.setString(8,pg);
                   
                   pt.executeUpdate();
            
            out.println("Insert Data Sucess!!!");
            
            %>
    </body>
</html>
