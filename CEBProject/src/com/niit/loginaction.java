package com.niit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginaction
 */
@WebServlet("/loginaction")
public class loginaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String emp=request.getParameter("email");
		String password=request.getParameter("pass");
			try
			{
				
				//register driverclass
				Class.forName("org.h2.Driver");
				 //create a connection
				Connection con = DriverManager.getConnection ("jdbc:h2:tcp://localhost/~/CEBProject","sa",""); 
				
				//create a preparedstatement
				PreparedStatement prepared = con.prepareStatement("select * from register where email=? and pass=?");
				prepared.setString(1, emp);
				prepared.setString(2, password);
				 //execute a query
				ResultSet rs=prepared.executeQuery();
				
				if(rs.next())
				{
				
					//String name=request.getParameter("empid"); 
					HttpSession session=request.getSession();  //create a session
			        session.setAttribute("email",emp);  //set attribute
                    RequestDispatcher dispatch=request.getRequestDispatcher("skillsetrequest.jsp");
			        dispatch.forward(request, response);
					out.println("**");
				
				}
				else
				{
					    RequestDispatcher dispatch=request.getRequestDispatcher("loginaction.jsp");
				        dispatch.forward(request, response);
				        out.println("LoginFail!!");
				}
				con.close();
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		
}
