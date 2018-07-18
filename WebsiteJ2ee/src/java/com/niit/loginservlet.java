/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.niit;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asar
 */
public class loginservlet extends HttpServlet {

    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
      PrintWriter out=response.getWriter();
      String e=request.getParameter("email");
      String p=request.getParameter("pass");
      
      if(e.equals("admin@gmail.com"))
      {
          RequestDispatcher d1=request.getRequestDispatcher("sucess.jsp");
          d1.forward(request, response);
      }
      else
      {
          RequestDispatcher d1=request.getRequestDispatcher("loginpage.jsp");
          d1.include(request, response);
          out.println("<h3 style='color:red'>LoginFail</h3>");
      }
      
    }

    

}
