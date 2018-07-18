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
 * Servlet implementation class skillsetrequestform
 */
@WebServlet("/skillsetrequestform")
public class skillsetrequestform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public skillsetrequestform() {
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
			//Code start
			
			
		String email=request.getParameter("email");
		String empname=request.getParameter("empname");
		/*String email=request.getParameter("email");*/
		String quali=request.getParameter("quali");
		int nobatch=Integer.parseInt(request.getParameter("nobatch")); 
		int stuh=Integer.parseInt(request.getParameter("stuh")); 
		String crole=request.getParameter("crole");
		String role=request.getParameter("role");
		int stup=Integer.parseInt(request.getParameter("stup")); 
		String status=request.getParameter("stus");
	  
		//query to insert the data
String str="insert into skillmaster(empname,qualification,noofbatch,studentshandle,currentrole,rolerequest,studentsplaced,status,email)values('"+empname+"','"+quali+"','"+nobatch+"','"+stuh+"','"+crole+"','"+role+"','"+stup+"','"+status+"','"+email+"')";
         
         
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
         
       
         
         //code end
         
       
		}
		catch(Exception t)
		{
			System.out.println(t);
		}
	}

}
