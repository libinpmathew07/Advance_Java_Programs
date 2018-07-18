<%-- 
    Document   : loginaction
    Created on : Feb 12, 2018, 12:10:02 PM
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
            if(u.equals("admin"))
            {%>
<!--//                RequestDispatcher g1=request.getRequestDispatcher("sucess.jsp");
//                g1.forward(request, response);-->
<jsp:forward page="sucess.jsp"/>
            <%}
            else
            {%>
<!--                RequestDispatcher g2=request.getRequestDispatcher("jsp1.jsp");
                g2.include(request, response);-->
<jsp:include page="jsp1.jsp"/>
               <% out.println("LoginFail!!");
            }
            
            %>
    </body>
</html>
