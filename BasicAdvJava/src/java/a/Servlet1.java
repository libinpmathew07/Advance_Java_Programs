/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package a;

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
public class Servlet1 extends HttpServlet 
{

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       PrintWriter out=response.getWriter();
       String u=request.getParameter("uname");
       String p=request.getParameter("pass");
       
       if(u.equals("admin")&&p.equals("admin"))
       {
           RequestDispatcher h=request.getRequestDispatcher("sucess.html");
           h.forward(request, response);
     //  out.println("LoginSucess");
       }
       else
       {
           RequestDispatcher h=request.getRequestDispatcher("index.html");
           h.include(request, response);
           out.println("LoginFail!!!");
       }
    }


   

}
