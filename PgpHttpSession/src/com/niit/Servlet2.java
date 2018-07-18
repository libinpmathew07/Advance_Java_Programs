package com.niit;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servlet2
 */
@WebServlet("/Servlet2")
public class Servlet2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
		
		
		PrintWriter out=response.getWriter();
		HttpSession sess=request.getSession(true);
		  String u1=(String) sess.getAttribute("UserName");
		  
		  String e1=(String) sess.getAttribute("Emailid");
		  
		 out.println("Welcome Next Page of"+u1+"\t"+e1);
		 
		 /*
		  * With Session 
		  * 
		  */
		 
		 /*
		  * without Session
		  * 
		  */
		 
		   //appending the email in the query string
			out.print("<a href='Servlet3?email="+e1+"'>visit</a>");
		
	}

	 


}
