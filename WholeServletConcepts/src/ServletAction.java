

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletAction
 */
@WebServlet("/ServletAction")
public class ServletAction extends HttpServlet {
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		
	   String e=request.getParameter("email");
	   
	   if(e.equals("admin@gmail.com"))
		   
	   {
	      RequestDispatcher dis=request.getRequestDispatcher("sucess.jsp");
	      dis.forward(request, response);
	   //out.println("welcome"+e);
	   }
	   else
	   {
		   RequestDispatcher dis=request.getRequestDispatcher("fail.jsp");
		   dis.include(request, response);
	   }
			   
	}

}
