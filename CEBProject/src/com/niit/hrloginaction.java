package com.niit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class hrloginaction
 */
@WebServlet("/hrloginaction")
public class hrloginaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hrloginaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try
		{
			String username=request.getParameter("username");
			String password=request.getParameter("pass");
			
			//register driverclass
			Class.forName("org.h2.Driver");
			 //create a connection
			Connection con = DriverManager.getConnection ("jdbc:h2:tcp://localhost/~/CEBProject","sa",""); 
			
			//create a preparedstatement
			PreparedStatement prepared = con.prepareStatement("select * from hrlogin where username=? and pass=?");
			prepared.setString(1, username);
			prepared.setString(2, password);
			 //execute a query
			ResultSet rs=prepared.executeQuery();
			
			if(rs.next())
			{
			
							
                RequestDispatcher dispatch=request.getRequestDispatcher("hrheaderpage.jsp");
		        dispatch.forward(request, response);
				
			
			}
			else
			{
				    RequestDispatcher dispatch=request.getRequestDispatcher("hrlogin.jsp");
			        dispatch.forward(request, response);
			        out.println("LoginFail!!");
			}
			con.close();
			
		
			
			
		}
		catch(SQLException variable)
		{
			System.out.println(variable);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
