package com.niit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerformaction
 */
@WebServlet("/registerformaction")
public class registerformaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		//Code start
		try
		{
			
			String empname=request.getParameter("empname");
			String email=request.getParameter("email");
			String pass=request.getParameter("pass");
			int age=Integer.parseInt(request.getParameter("age"));
			 String date=request.getParameter("dob");
	        
	         String mobile=request.getParameter("mobile");
	      
	         String gender=request.getParameter("gen");
	         String qualification=request.getParameter("quali");
	        
	         
	         //query to insert the data
	         String str="insert into register(empname,email,pass,age,dob,mobile,gender,qualification)values('"+empname+"','"+email+"','"+pass+"','"+age+"','"+date+"','"+mobile+"','"+gender+"','"+qualification+"')";
	         
	         
	         //register driverclass
	         Class.forName("org.h2.Driver");
	         //create a connection
	         Connection connection=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/CEBProject","sa","");
	         //create a statement
	         Statement statement=connection.createStatement();
	         //execute a query
	         statement.executeUpdate(str);
	         out.println("Inserted");
	         out.println("<a href='header.jsp'>Back</a>");
	         
	         //Code end
			
		}
		catch(SQLException t)
		{
			System.out.println(t);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
