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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Asar
 */
public class SessionServlet extends HttpServlet 
{


    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
      String u=request.getParameter("uname");
      
       
        
        if(u.equals("admin"))
        {
                     HttpSession s=request.getSession();
                      s.setAttribute("username", u);
                      RequestDispatcher f1=request.getRequestDispatcher("ActionSession");
                      f1.forward(request, response);
        }
        else if(u.equals("niit"))
        {
              Cookie c=new Cookie("username",u);
              response.addCookie(c);
              RequestDispatcher f1=request.getRequestDispatcher("ActionCookies");
                      f1.forward(request, response);
        }
        
    }

   

}
