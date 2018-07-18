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
public class DemoServlet extends HttpServlet 
{

    public void doGet(HttpServletRequest req,HttpServletResponse res)
    {
     try
     {
       res.setContentType("text/html");
       PrintWriter out=res.getWriter();
       
       String u=req.getParameter("uname");
       String p=req.getParameter("pass");
       
       if(u.equals("admin")&&p.equals("admin"))
       {
       
           RequestDispatcher g1=req.getRequestDispatcher("sucess.html");
           g1.forward(req, res);
       }
       else
       {
           RequestDispatcher g1=req.getRequestDispatcher("index.html");
           g1.include(req, res);
            out.println("<h3>LoginFail</h3>");
       }
     }
     catch(Exception t)
     {
       System.out.println(t);
     }
    }
}
