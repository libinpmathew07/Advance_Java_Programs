package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class serv1
 */
@WebServlet("/serv1")
public class serv1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serv1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String u = request.getParameter("usr");
	       String p = request.getParameter("pwd");
	       if(u.equals("admin@gmail.com") && p.equals("admin"))
	       {
	    	   HttpSession sess = request.getSession();
	   		   response.setContentType("text/html"); 
	   		   sess.setAttribute("uname",u);
	           RequestDispatcher di = request.getRequestDispatcher("hrapprovalpage.jsp");
	           di.include(request,response);	          
	       }
	       else
	       {
	          RequestDispatcher di = request.getRequestDispatcher("fail.jsp");
	          di.forward(request,response);          
	       }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
