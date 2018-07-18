<%-- 
    Document   : loginaction
    Created on : Mar 14, 2018, 3:57:22 PM
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
                 try
                 {
            String u=request.getParameter("name");
            String p=request.getParameter("pass");
           
            String str="select * from reg where uname='"+u+"'";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn=DriverManager.getConnection("jdbc:odbc:reg1");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(str);
            rs.next();
            
            String uname=rs.getString(1).trim();
            String pass=rs.getString(2).trim();
            
            if(u.equals(uname)||p.equals(pass))
            {
                
               HttpSession session1=request.getSession();
               session1.setAttribute("username", u);
               RequestDispatcher f1=request.getRequestDispatcher("view.jsp");
               f1.forward(request, response);
            }
           
            
                 }
                 catch(Exception t)
                 {
                     out.println("LoginFail!!");
                 }
            
            %>
    </body>
</html>
