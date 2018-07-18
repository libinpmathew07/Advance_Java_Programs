package com.niit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class skillsetform
 */
@WebServlet("/skillsetform")
public class skillsetform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public skillsetform() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		try
		{
			
			String skills1="";
			String skills2="";
			String[] certificate = request.getParameterValues("select2");
			  for(int i=0; i<certificate.length; i++){
				  skills1+=certificate[i]+" ";
			  }
			  String[] skills = request.getParameterValues("select3");
			  for(int i=0; i<skills.length; i++){
				  skills2+=skills[i]+" ";
			  }
			  
				String email=request.getParameter("email");
			
				//query to insert the data
		String str="insert into skillset(certified,skills,email)values('"+skills1+"','"+skills2+"','"+email+"')";
		         
		         
		         //register driverclass
		         Class.forName("org.h2.Driver");
		         //create a connection
		         Connection connection=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/CEBProject","sa","");
		         //create a statement
		         Statement statement=connection.createStatement();
		          //execute a query
		         statement.executeUpdate(str);
		        
		         out.println("Inserted..");
		         out.println("<a href='skillsetrequest.jsp'>Back</a>");
		}
		catch(Exception t)
		{
			System.out.println(t);
		}
	}

}
