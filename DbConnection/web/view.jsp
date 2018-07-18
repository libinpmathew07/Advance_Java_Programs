<%-- 
    Document   : view
    Created on : Mar 16, 2018, 8:10:52 PM
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
           HttpSession session1=request.getSession(true);
           
           String kk=(String)session1.getAttribute("username");
            
           out.println("welcome"+kk);
           
           String str="select email from reg where uname='"+kk+"'";
           
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection conn=DriverManager.getConnection("jdbc:odbc:reg1");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(str);
            rs.next();
            
            
            out.println("<table border='1'>");
            out.println("<th>Email"
                    + "<tr>"
                    + "<td>"+rs.getString(1)+"</td>"
                    + "</tr>"
                    + "</th>");
          //  out.println("Your Email Id is:\n"+rs.getString(1));
            out.println("</table>");
            
             out.println("<h1>Click Here to Update</h1>");
             out.println("<a href='updatepage.jsp'>Update</a>");
            %>
    </body>
</html>
