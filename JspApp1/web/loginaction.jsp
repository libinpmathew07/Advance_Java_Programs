<%-- 
    Document   : loginaction
    Created on : Mar 3, 2018, 7:49:56 PM
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
        <%
            String u=request.getParameter("uname");
            String e=request.getParameter("pass");
            
            if(u.equals("admin"))
            {
              RequestDispatcher g=request.getRequestDispatcher("sucess.jsp");
              g.forward(request, response);
            }
            else
            {
                RequestDispatcher h=request.getRequestDispatcher("loginpage.jsp");
                h.include(request, response);
                out.println("<h3 style='color:red'>LoginFail!!!</h3>");
            }
            %>
    </body>
</html>
