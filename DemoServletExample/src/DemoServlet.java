

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DemoServlet
 */
@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String u=request.getParameter("uname");
		String p=request.getParameter("pass");
		if(u.equals("admin")&&p.equals("admin"))
		{
			/*out.println("LoginSucesss!!!");*/
			RequestDispatcher dis=request.getRequestDispatcher("sucess.html");
			dis.forward(request, response);
		}
		else
		{
			RequestDispatcher dis=request.getRequestDispatcher("LoginForm.html");
			dis.include(request, response);
			out.println("LoginFail!!");
		}
		//out.println("welcome to niit"+u+""+p);
	}

}
