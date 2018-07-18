

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  PrintWriter out=response.getWriter();
	  String u=request.getParameter("uname");
	  String p=request.getParameter("pass");
	  if(u.equals("admin")&&p.equals("admin"))
	  {
		  RequestDispatcher f=request.getRequestDispatcher("sucss.jsp");
		  f.forward(request, response);
	  }
	  else
	  {
		  RequestDispatcher f1=request.getRequestDispatcher("LoginPage.jsp");
		  f1.include(request, response);
		  out.println("<h3>LoginFail!!!</h3>");
	  }
	}

}
