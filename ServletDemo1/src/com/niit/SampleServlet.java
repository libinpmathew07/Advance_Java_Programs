package com.niit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SampleServlet
 */
@WebServlet("/SampleServlet")
public class SampleServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String u=request.getParameter("uname");
		String p=request.getParameter("pass");
	   
		if(u.equals("admin")&&p.equals("admin"))
		{
		 // out.println("LoginSucess");
			//RequestDispatcher rd=request.getRequestDispatcher("page1.jsp");
			//rd.forward(request, response);
			response.sendRedirect("page1.jsp");
		}
		else
		{
			RequestDispatcher rd1=request.getRequestDispatcher("homepage.jsp");
			rd1.include(request, response);
			out.println("<h3 style='color:red'>LoginFail..</h3>");
		}
	}

}
