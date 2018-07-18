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
 * Servlet implementation class UserLoginAction
 */
@WebServlet("/UserLoginAction")
public class UserLoginAction extends HttpServlet 
{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		PrintWriter out=response.getWriter();
		
		String u=request.getParameter("email");
		String p=request.getParameter("pwd");
		
		if(u.equals("azar@gmail.com")&&p.equals("azar"))
		{
		
			RequestDispatcher di=request.getRequestDispatcher("Sucess.jsp");
			di.forward(request, response);
			
		//out.println("LoginSucess.."+u+""+p);
		}
		else
		{
			RequestDispatcher di=request.getRequestDispatcher("fail.jsp");
			di.include(request, response);
			//out.println("LoginFail");
		}
	}

}
