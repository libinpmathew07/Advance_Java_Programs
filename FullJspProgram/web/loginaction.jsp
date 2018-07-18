<%-- 
    Document   : loginaction
    Created on : Mar 8, 2018, 3:41:40 PM
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
            {
                
                //String j=request.getParameter("uname");
                        
//               ServletConfig config1=getServletConfig();
//                String d=config1.getInitParameter("demo");
//                out.println("ServletConfigin JSP"+d);
                
//               RequestDispatcher g=request.getRequestDispatcher("sucess.jsp");
//                
//               g.forward(request, response);
                %>
                <%--<jsp:forward page="sucess.jsp"/>--%>
                <%
            }
            else
            {%>
            <jsp:include page="JspLogin.jsp"/>
            <%
//                 RequestDispatcher g=request.getRequestDispatcher("JspLogin.jsp");
              out.println("<h3>LoginFail!!!</h3>");
//                g.include(request, response);
            }
            %>
    </body>
</html>
